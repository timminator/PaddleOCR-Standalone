# Copyright (c) 2025 PaddlePaddle Authors. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

import time

from .logging import logger


def str2bool(v, /):
    return v.lower() in ("true", "yes", "t", "y", "1")


def get_subcommand_args(args):
    args = vars(args).copy()
    args.pop("subcommand")
    args.pop("executor")
    return args


def add_simple_inference_args(subparser, *, input_help=None):
    if input_help is None:
        input_help = "Input path or URL."
    subparser.add_argument(
        "-i",
        "--input",
        type=str,
        required=True,
        help=input_help,
    )
    subparser.add_argument(
        "--save_path",
        type=str,
        help="Path to the output directory.",
    )


def perform_simple_inference(wrapper_cls, params, predict_param_names=None):
    params = params.copy()

    input_ = params.pop("input")
    save_path = params.pop("save_path")

    if predict_param_names is not None:
        predict_params = {}
        for name in predict_param_names:
            predict_params[name] = params.pop(name)
    else:
        predict_params = {}
    init_params = params

    wrapper = wrapper_cls(**init_params)

    result = wrapper.predict_iter(input_, **predict_params)

    t1 = time.time()
    for i, res in enumerate(result):
        logger.info(f"Processed item {i+1} in {(time.time()-t1) * 1000} ms")
        t1 = time.time()
        res.print()
        if save_path:
            res.save_all(save_path)


def print_res(res):
    logger.info(f"{'*' * 10}{res['input_path']}{'*' * 10}")

    boxes = res["rec_polys"]
    texts = res["rec_texts"]
    scores = res["rec_scores"]

    if not texts:
        logger.warning(f"No text found in image {res['input_path']}")
        return

    for box, text, score in zip(boxes, texts, scores):
        box_list = [[float(x), float(y)] for x, y in box.tolist()]
        logger.info(f"[{box_list}, ({repr(text)}, {score})]")


def perform_simple_inference_ocr(wrapper_cls, params, predict_param_names=None):
    params = params.copy()

    input_ = params.pop("input")
    save_path = params.pop("save_path")

    if predict_param_names is not None:
        predict_params = {}
        for name in predict_param_names:
            predict_params[name] = params.pop(name)
    else:
        predict_params = {}
    init_params = params

    wrapper = wrapper_cls(**init_params)

    result = wrapper.predict_iter(input_, **predict_params)

    t1 = time.time()
    for i, res in enumerate(result):
        logger.info(f"Processed item {i+1} in {(time.time()-t1) * 1000} ms")
        t1 = time.time()
        print_res(res)
        if save_path:
            res.save_all(save_path)
