load("//scala:scala.bzl", "scala_binary")

scala_binary(
    name = "linker_worker",
    srcs = ["LinkerWorker.scala"],
    main_class = "scala.scalanative.bazel.LinkerWorker",
    deps = [
        "@org_scala_native_tools//jar",
        "@org_scala_native_nativelib//jar",
        "@org_scala_native_javalib//jar",
        "@org_scala_native_scalalib//jar",
        "@org_scala_native_auxlib//jar",
        "@org_scala_native_util//jar",
        "@org_scala_native_nir//jar",
    ],
    visibility = ["//:__subpackages__"],
)
