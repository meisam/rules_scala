"""Definitions for Scala Native toolchain artifacts."""

def scala_native_artifact_ids(scala_version):
  """Returns a list of Maven artifact IDs for Scala Native.

  Args:
    scala_version: The Scala version string.

  Returns:
    A list of artifact ID strings.
  """
  if scala_version == "3.8.1":
    return [
        "org_scala_native_nscplugin",
        "org_scala_native_scalalib",
        "org_scala_native_nativelib",
        "org_scala_native_javalib",
        "org_scala_native_auxlib",
        "org_scala_native_tools",
        "org_scala_native_test_interface",
        "org_scala_native_junit_runtime",
        "io_bazel_rules_scala_junit_junit",
    ]
  return []
