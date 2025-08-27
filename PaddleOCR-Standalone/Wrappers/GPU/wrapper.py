# Compilation instructions
# nuitka-project: --standalone

# nuitka-project: --include-package-data=paddleocr
# nuitka-project: --include-package-data=paddlex

# nuitka-project: --output-filename=paddleocr

# nuitka-project: --include-distribution-metadata=imagesize
# nuitka-project: --include-distribution-metadata=opencv-contrib-python
# nuitka-project: --include-distribution-metadata=pyclipper
# nuitka-project: --include-distribution-metadata=pypdfium2
# nuitka-project: --include-distribution-metadata=shapely


# Windows-specific metadata for the executable
# nuitka-project-if: {OS} == "Windows":
#     nuitka-project: --file-description="PaddleOCR Standalone Executable"
#     nuitka-project: --file-version="1.3.0"
#     nuitka-project: --product-name="PaddleOCR-GPU"
#     nuitka-project: --product-version="1.3.0"
#     nuitka-project: --copyright="timminator"
#     nuitka-project: --windows-icon-from-ico=paddleocr.ico


import sys
import os

os.environ["PADDLE_PDX_CACHE_HOME"] = os.path.join(os.path.dirname(os.path.abspath(__file__)), ".paddlex")

from paddleocr.__main__ import console_entry

if __name__ == "__main__":
    if len(sys.argv) == 1: 
        sys.argv.append("--help") 
    console_entry()
