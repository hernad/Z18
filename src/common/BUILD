load("@rules_cc//cc:defs.bzl", "cc_library")
load("//bazel:zh_comp.bzl", "zh_comp_all")
load("//bazel:variables.bzl", "C_OPTS", "ZH_COMP_OPTS", "ZH_Z18_COMP_OPTS", "ZH_Z18_HEADERS")

cc_library(
    name = "Z18_common_c",
    srcs = [ ":Z18_common" ],
    hdrs = glob([
        "*.h",
    ]),
    copts = C_OPTS,
    deps = [ 
       "//zh_zero:zh_zero", 
       "//zh_rtl:zh_rtl",
       "//zh_vm:zh_vm"
    ],
    alwayslink=1,
    visibility = ["//visibility:public"],
)


zh_comp_all(
    name = "Z18_common", 
    srcs = glob([ "*.zh" ]),
    args = ZH_COMP_OPTS + ZH_Z18_COMP_OPTS,
    deps = ZH_Z18_HEADERS,
    visibility = ["//visibility:public"],
)
