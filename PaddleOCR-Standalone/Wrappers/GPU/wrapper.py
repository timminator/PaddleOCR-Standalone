# Compilation instructions
# nuitka-project: --standalone

# nuitka-project: --include-package-data=paddleocr
# nuitka-project: --include-package-data=paddlex

# nuitka-project-if: {OS} == "Windows":
#     nuitka-project: --output-filename=paddleocr
# nuitka-project-if: {OS} == "Linux":
#     nuitka-project: --output-filename=paddleocr.bin

# nuitka-project: --include-distribution-metadata=imagesize
# nuitka-project: --include-distribution-metadata=opencv-contrib-python
# nuitka-project: --include-distribution-metadata=pyclipper
# nuitka-project: --include-distribution-metadata=pypdfium2
# nuitka-project: --include-distribution-metadata=python-bidi
# nuitka-project: --include-distribution-metadata=shapely


# Windows-specific metadata for the executable
# nuitka-project-if: {OS} == "Windows":
#     nuitka-project: --file-description="PaddleOCR Standalone Executable"
#     nuitka-project: --file-version="1.4.0"
#     nuitka-project: --product-name="PaddleOCR-GPU"
#     nuitka-project: --product-version="1.4.0"
#     nuitka-project: --copyright="timminator"
#     nuitka-project: --windows-icon-from-ico=paddleocr.ico

# ============================================================
# Portable mode with fallback to user home
#
# Priority:
#   1. ./.paddlex/temp  (portable, next to the exe)
#   2. $USERPROFILE/.paddlex  (fallback for restricted dirs,
#      e.g. C:\Program Files, Citrix multi-user environments)
#
# The fallback is triggered when the process lacks write
# permission on the exe directory (WinError 5 / EACCES).
# ============================================================
import os
import pathlib


def _resolve_paddlex_home() -> pathlib.Path:
    exe_dir = pathlib.Path(os.path.dirname(os.path.abspath(__file__)))
    portable_home = exe_dir / ".paddlex"
    try:
        (portable_home / "temp").mkdir(parents=True, exist_ok=True)
        return portable_home
    except PermissionError:
        pass

    # Fallback: use the real user home directory.
    # Under Nuitka on Windows, pathlib.Path.home() may resolve to
    # the exe directory instead of USERPROFILE, so we read the
    # environment variable directly.
    user_home = (
        os.environ.get("USERPROFILE")
        or os.environ.get("HOME")
        or str(pathlib.Path.home())
    )
    user_paddlex = pathlib.Path(user_home) / ".paddlex"
    (user_paddlex / "temp").mkdir(parents=True, exist_ok=True)
    (user_paddlex / "official_models").mkdir(parents=True, exist_ok=True)
    return user_paddlex


_paddlex_home = _resolve_paddlex_home()
# ============================================================
# END
# ============================================================

import sys
import os

os.environ["PADDLE_PDX_CACHE_HOME"] = str(_paddlex_home)
os.environ["PADDLE_PDX_DISABLE_MODEL_SOURCE_CHECK"] = "True"

from paddleocr.__main__ import console_entry

if __name__ == "__main__":
    if len(sys.argv) == 1:
        sys.argv.append("--help")
    console_entry()
