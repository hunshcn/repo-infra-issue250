bazel run @bazel_gazelle//cmd/gazelle -- update-repos \
  --from_file=go.mod --to_macro=repo.bzl%go_repos \
  --build_file_generation=on --build_file_proto_mode=disable \
  --prune
