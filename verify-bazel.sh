#!/usr/bin/env bash

set -o errexit
set -o nounset
set -o pipefail


fail() {
  echo "ERROR: $1. Fix with:" >&2
  echo "  run ./update-bazel" >&2
  exit 1
}

if [[ -n "${TEST_WORKSPACE:-}" ]]; then # Running inside bazel
  echo "Validating bazel rules..." >&2
else
  (
    set -o xtrace
    bazel test --test_output=streamed //:verify-bazel
  )
  exit 0
fi

gazelle=$1

ls -al


"$gazelle" fix --mode=diff --external=external
