load("@rules_cc//cc:defs.bzl", "cc_library", "cc_binary")
load("//bazel:zh_comp.bzl", "zh_comp_all")
load("//bazel:variables.bzl", "C_OPTS", "ZH_COMP_OPTS", 
    "ZH_Z18_COMP_OPTS", "ZH_Z18_HEADERS", "L_OPTS", "L_OPTS_2",
    "POSTGRESQL_LIB" )


cc_binary(
    name = "Z18-klijent",
    deps = [
        "//Z18/src:Z18_klijent_zh_c",
        "//zh_zero:zh_zero", 
        "//zh_vm:zh_vm",
        "//zh_vm:zh_vm_zh_c",
        "//zh_macro:zh_macro",
        "//zh_rtl:zh_rtl",
        "//zh_rtl:zh_rtl_zh_c",
        "//zh_rtl/gt:zh_rtl_gt",
        "//zh_rtl/gt:zh_rtl_gt_zh_c",
        "//zh_rtl/rdd:zh_rtl_rdd",
        "//zh_rtl/rdd:zh_rtl_rdd_zh_c",
        "//zh_tools:zh_tools",
        "//zh_tools:zh_tools_zh_c",
        "//Z18/src/common:Z18_common_c",
        "//Z18/src/common_legacy:Z18_common_legacy_c",
        "//Z18/src/core:Z18_core_c",
        "//Z18/src/core_dbf:Z18_core_dbf_c",
        "//Z18/src/core_reporting:Z18_core_reporting_c",
        #"//Z18/src/core_semafori:Z18_core_semafori_c",
        "//Z18/src/core_sql:Z18_core_sql_c",
        "//Z18/src/core_string:Z18_core_string_c",
        "//Z18/src/core_ui2:Z18_core_ui2_c",
        "//Z18/src/fakt:Z18_fakt_c",
        "//Z18/src/fin:Z18_fin_c",
        "//Z18/src/epdv:Z18_epdv_c",
        "//Z18/src/os:Z18_os_c",
        "//Z18/src/ld:Z18_ld_c",
        "//Z18/src/virm:Z18_virm_c",
        "//Z18/src/fiskalizacija:Z18_fiskalizacija_c",
        "//Z18/src/kalk:Z18_kalk_c",
        "//Z18/src/kalk_legacy:Z18_kalk_legacy_c",
        "//Z18/src/pos:Z18_pos_c",
        "//third_party/xlsxwriter:xlsxwriter",
        "//zh_xlsxwriter:zh_xlsxwriter",
        "//zh_xlsxwriter:zh_xlsxwriter_zh_c",
        "//zh_harupdf:zh_harupdf",
        "//zh_harupdf:zh_harupdf_zh_c",
        "//zh_minizip:zh_minizip",
        "//zh_minizip:zh_minizip_zh_c",
        "//third_party/minizip:minizip",
        "//zh_pgsql:zh_pgsql",
        "//zh_pgsql:zh_pgsql_zh_c",
        "//third_party/png:png",
        "//zh_tcp_ip:zh_tcp_ip",
        "//zh_tcp_ip:zh_tcp_ip_zh_c",
        "//zh_ssl:zh_ssl",
        "//zh_ssl:zh_ssl_zh_c"
    ] + POSTGRESQL_LIB,
    linkopts = L_OPTS + L_OPTS_2,
    copts = C_OPTS,
    linkstatic = True,
    visibility = ["//visibility:public"],
)


Z18_LIB = "klijent"

cc_library(
    name = "Z18_" + Z18_LIB + "_zh_c",
    srcs = [ ":Z18_" + Z18_LIB + "_zh" ],
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
    name = "Z18_" + Z18_LIB + "_zh", 
    srcs = glob([ "*.zh" ]),
    args = ZH_COMP_OPTS + ZH_Z18_COMP_OPTS,
    deps = ZH_Z18_HEADERS,
    visibility = ["//visibility:public"],
)
