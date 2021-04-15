load("@rules_cc//cc:defs.bzl", "cc_library")
load("//bazel:zh_comp.bzl", "zh_comp_all")
load("//bazel:variables.bzl", "ZH_COMP_OPTS", "ZH_Z18_COMP_OPTS", "ZH_Z18_HEADERS", "C_OPTS")

Z18_LIB = "core_string"

cc_library(
    name = "Z18_" + Z18_LIB + "_c",
    srcs = [ ":Z18_" + Z18_LIB ],
    hdrs = glob([
        "*.h",
    ]),
    deps = [ 
       "//zh_zero:zh_zero", 
       "//zh_rtl:zh_rtl",
       "//zh_vm:zh_vm"
    ],
    alwayslink=1,
    copts = C_OPTS,
    visibility = ["//visibility:public"],
)

zh_comp_all(
    name = "Z18_" + Z18_LIB,
    srcs = glob([ "*.zh" ]),
    args = ZH_COMP_OPTS + ZH_Z18_COMP_OPTS,
    deps = ZH_Z18_HEADERS,
    visibility = ["//visibility:public"],
)
