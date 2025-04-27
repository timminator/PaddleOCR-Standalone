<p align="center">
 <img src="https://github.com/PaddlePaddle/PaddleOCR/releases/download/v2.8.0/PaddleOCR_logo.png" align="middle" width = "600"/>
<p align="center">
    Now as a Standalone executable!
    <br />
  </p>
</p>

## ℹ About

This repository provides executables (CPU and GPU version) that can be run without having python or any other packages installed. They behave as the original PaddleOCR install for example via pip.

You can decide between installing it via the setup installer or just downloading the folder with all the required files including the executable.  
The installer also allows you to add the install location to you path which allows you to use paddleocr from every location.

It also provides C++ executables (CPU and GPU version).  
  
Not only are the Standalone versions easier to setup, they also perform way better than PaddleOCR via Python. The following table shows the time to process 250 subtitles:  
  
| Version        | GPU (Batch) | CPU (Batch) |
|------------|------------|---------------|
| **Python** | 12s        | 79s           |  
| **Python Standalone** | 10s        | 28.6s           |
| **C++ Standalone** | 9s        | 24.5s     |
  
## Usage  
  
If you installed PaddleOCR via the setup wizard and added it to your Path you can just open a terminal and run the following command:  
  
```
paddleocr -h
```

If you downloaded the 7zip file, unzip it to your desired location and open a terminal in there. Afterwards you can run the following command:

```
.\paddleocr.exe -h
```

If you downloaded one of the 7zip files of the C++ version, unzip it to your desired location and open a terminal in there. Afterwards you can run the following command:

```
.\paddleocr.exe -help
```


## Notes  
  
- Don't be confused when it takes a longer time to start when running it the first time, especially when using the GPU version. This is the normal behavior. Afterwards it runs normally.

- Please only report bugs that are specific to this standalone executable and are working correctly in the original repository.  
  
- A few changes had to be made to the source code to allow the creation of this executable (Python version). They can be viewed in the PaddleOCR-Standalone folder.

- The output behavior of the C++ executables is slightly modified as well. Originally it only printed the results when all images where processed. This was updated to print the result as soon as an image is processed. Furthermore was the output updated to look more in line with the output from the Python version.  
Changes can be viewed in the PaddleOCR-Standalone -> C++ folder. 
  
- Setup installers for the C++ versions are not provided because they are not very user friendly and should only be used if you are interested in tinkering around and want maximum performance.


## Introduction

PaddleOCR aims to create multilingual, awesome, leading, and practical OCR tools that help users train better models and apply them into practice.

<div align="center">
    <img src="https://github.com/PaddlePaddle/PaddleOCR/releases/download/v2.8.0/demo.gif" width="800">
</div>


## 📣 Recent updates ([more](https://paddlepaddle.github.io/PaddleOCR/latest/en/update.html))

- **🔥 2024.10.18 release PaddleOCR v2.9, including**:
    - PaddleX, an All-in-One development tool based on PaddleOCR's advanced technology, supports low-code full-process development capabilities in the OCR field:
        - 🎨 [**Rich Model One-Click Call**](https://paddlepaddle.github.io/PaddleOCR/latest/en/paddlex/quick_start.html): Integrates **17 models** related to text image intelligent analysis, general OCR, general layout parsing, table recognition, formula recognition, and seal recognition into 6 pipelines, which can be quickly experienced through a simple **Python API one-click call**. In addition, the same set of APIs also supports a total of **200+ models** in image classification, object detection, image segmentation, and time series forcasting, forming 20+ single-function modules, making it convenient for developers to use **model combinations**.

        - 🚀 [**High Efficiency and Low barrier of entry**](https://paddlepaddle.github.io/PaddleOCR/latest/en/paddlex/overview.html): Provides two methods based on **unified commands** and **GUI** to achieve simple and efficient use, combination, and customization of models. Supports multiple deployment methods such as **high-performance inference, service-oriented deployment, and edge deployment**. Additionally, for various mainstream hardware such as **NVIDIA GPU, Kunlunxin XPU, Ascend NPU, Cambricon MLU, and Haiguang DCU**, models can be developed with **seamless switching**.

    - Supports [PP-ChatOCRv3-doc](https://paddlepaddle.github.io/PaddleX/latest/en/pipeline_usage/tutorials/information_extraction_pipelines/document_scene_information_extraction.html), [high-precision layout detection model based on RT-DETR](https://paddlepaddle.github.io/PaddleX/latest/en/module_usage/tutorials/ocr_modules/layout_detection.html) and [high-efficiency layout area detection model based on PicoDet](https://paddlepaddle.github.io/PaddleX/latest/en/module_usage/tutorials/ocr_modules/layout_detection.html), [high-precision table structure recognition model](https://paddlepaddle.github.io/PaddleX/latest/en/module_usage/tutorials/ocr_modules/table_structure_recognition.html), text image unwarping model [UVDoc](https://paddlepaddle.github.io/PaddleX/latest/en/module_usage/tutorials/ocr_modules/text_image_unwarping.html), formula recognition model [LatexOCR](https://paddlepaddle.github.io/PaddleX/latest/en/module_usage/tutorials/ocr_modules/formula_recognition.html), and [document image orientation classification model based on PP-LCNet](https://paddlepaddle.github.io/PaddleX/latest/en/module_usage/tutorials/ocr_modules/doc_img_orientation_classification.html).

- **🔥2024.7 Added PaddleOCR Algorithm Model Challenge Champion Solutions**:
    - Challenge One, OCR End-to-End Recognition Task Champion Solution: [Scene Text Recognition Algorithm-SVTRv2](https://paddlepaddle.github.io/PaddleOCR/algorithm/text_recognition/algorithm_rec_svtrv2.html);
    - Challenge Two, General Table Recognition Task Champion Solution: [Table Recognition Algorithm-SLANet-LCNetV2](https://paddlepaddle.github.io/PaddleOCR/algorithm/table_recognition/algorithm_table_slanet.html).

## 📚 Documentation

Full documentation can be found on [docs](https://paddlepaddle.github.io/PaddleOCR/latest/en/index.html).

## 🌟 Features

PaddleOCR support a variety of cutting-edge algorithms related to OCR, and developed industrial featured models/solution [PP-OCR](https://paddlepaddle.github.io/PaddleOCR/latest/en/ppocr/overview.html)、 [PP-Structure](https://paddlepaddle.github.io/PaddleOCR/latest/en/ppstructure/overview.html) and [PP-ChatOCR](https://aistudio.baidu.com/aistudio/projectdetail/6488689) on this basis, and get through the whole process of data production, model training, compression, inference and deployment.

<div align="center">
    <img src="./docs/images/ppocrv4_en.jpg">
</div>

> It is recommended to start with the “quick experience” in the document tutorial

## ⚡ [Quick Start](https://paddlepaddle.github.io/PaddleOCR/latest/en/quick_start.html)

## 📖 Technical exchange and cooperation

PaddleX provides a one-stop full-process high-efficiency development platform for flying paddle ecological model training, pressure, and push. Its mission is to help AI technology quickly land, and its vision is to make everyone an AI Developer!

- PaddleX currently covers areas such as image classification, object detection, image segmentation, 3D, OCR, and time series prediction, and has built-in 36 basic single models, such as RP-DETR, PP-YOLOE, PP-HGNet, PP-LCNet, PP- LiteSeg, etc.; integrated 12 practical industrial solutions, such as PP-OCRv4, PP-ChatOCR, PP-ShiTu, PP-TS, vehicle-mounted road waste detection, identification of prohibited wildlife products, etc.
- PaddleX provides two AI development modes: "Toolbox" and "Developer". The toolbox mode can tune key hyperparameters without code, and the developer mode can perform single-model training, push and multi-model serial inference with low code, and supports both cloud and local terminals.
- PaddleX also supports joint innovation and development, profit sharing! At present, PaddleX is rapidly iterating, and welcomes the participation of individual developers and enterprise developers to create a prosperous AI technology ecosystem!

## 📚 E-book: *Dive Into OCR*

- [Dive Into OCR](https://paddlepaddle.github.io/PaddleOCR/latest/en/ppocr/blog/ocr_book.html)


## 📄 License

This project is released under [Apache License Version 2.0](./LICENSE).
