"""Definitions for Scala Native toolchain artifacts."""

def scala_native_artifact_ids(scala_version):
  """Returns a list of Maven artifact IDs for Scala Native.

  Args:
    scala_version: The Scala version string. Scala version is ignored and assumed to be 3.8.1 on Scala native 0.5.10.

  Returns:
    A list of artifact ID strings.
  """
  return [
      "org_scala_native_nscplugin",
  ]
