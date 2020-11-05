package(default_visibility = ["//visibility:public"])

exports_files(
    [
        "efficientnet-edgetpu-L_quant.tflite",
        "efficientnet-edgetpu-M_quant.tflite",
        "efficientnet-edgetpu-S_quant.tflite",
        "mobilenet_v2_1.0_224_quant_edgetpu.tflite",
    ],
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
