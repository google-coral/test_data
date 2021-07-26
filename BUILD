# Copyright 2019-2021 Google LLC
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

package(default_visibility = ["//visibility:public"])

licenses(["notice"])

exports_files(
    [
        "efficientdet_lite0_320_ptq.tflite",
        "efficientdet_lite1_384_ptq.tflite",
        "efficientdet_lite2_448_ptq.tflite",
        "efficientdet_lite3_512_ptq.tflite",
        "efficientdet_lite3x_640_ptq.tflite",
        "efficientnet-edgetpu-L_quant.tflite",
        "efficientnet-edgetpu-M_quant.tflite",
        "efficientnet-edgetpu-S_quant.tflite",
        "mobilenet_v2_1.0_224_quant_edgetpu.tflite",
        "movenet_single_pose_lightning_ptq.tflite",
        "movenet_single_pose_thunder_ptq.tflite",
    ] + glob(["*.txt"]),
    visibility = ["//visibility:public"],
)

filegroup(
    name = "models",
    srcs = glob(["*.tflite"]),
)

filegroup(
    name = "labels",
    srcs = glob(["*.txt"]),
)

filegroup(
    name = "images",
    srcs = glob([
        "*.bmp",
        "*.jpg",
    ]),
)

filegroup(
    name = "reference_results",
    srcs = glob(["*.csv"]),
)
