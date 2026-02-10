"""Scala Native toolchain setup and configuration."""

load(
  "//scala_native:scala_native_toolchain.bzl",
  "scala_native_toolchain",
)

def setup_scala_native_toolchain(
        name = "scala_native_toolchain_impl",
        nscplugin = "@org_scala_native_nscplugin//jar",
        scala_native_version = "0.5.10",
        visibility = ["//visibility:public"]):
    """Creates and registers a Scala Native toolchain.
    
    Args:
        name: Name for the toolchain implementation target.
        nscplugin: Label of the nscplugin JAR.
        scala_native_version: Version of Scala Native.
        visibility: Visibility for the toolchain.
    """
    scala_native_toolchain(
        name = name,
        nscplugin = nscplugin,
        scala_native_version = scala_native_version,
        visibility = visibility,
    )
    
    native.toolchain(
        name = name + "_toolchain",
        toolchain = ":" + name,
        toolchain_type = "//scala_native:toolchain_type",
        visibility = visibility,
    )
