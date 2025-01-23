from paddleocr.paddleocr import main  # Entry point
import sys

if __name__ == "__main__":
    # Mimic the paddleocr command-line behavior
    if len(sys.argv) == 1:  # No additional arguments provided
        sys.argv.append("--help")  # Redirect to help
    main()