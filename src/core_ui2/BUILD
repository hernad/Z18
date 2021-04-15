load("@rules_cc//cc:defs.bzl", "cc_library")
load("//bazel:zh_comp.bzl", "zh_comp_all")
load("//bazel:variables.bzl", "ZH_COMP_OPTS", "ZH_Z18_COMP_OPTS", "ZH_Z18_HEADERS", "C_OPTS")

cc_library(
    name = "Z18_core_ui2_c",
    srcs = [ ":Z18_core_ui2" ],
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
    visibility = ["//visibility:public"]
)

zh_comp_all(
    name = "Z18_core_ui2", 
    srcs = glob([ "*.zh" ]),
    args = ZH_COMP_OPTS + ZH_Z18_COMP_OPTS,
    deps = ZH_Z18_HEADERS,
    visibility = ["//visibility:public"],
)
