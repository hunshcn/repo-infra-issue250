workspace(name = "issue")

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

http_archive(
    name = "io_bazel_rules_go",
    sha256 = "91585017debb61982f7054c9688857a2ad1fd823fc3f9cb05048b0025c47d023",
    urls = [
        "https://mirror.bazel.build/github.com/bazelbuild/rules_go/releases/download/v0.42.0/rules_go-v0.42.0.zip",
        "https://github.com/bazelbuild/rules_go/releases/download/v0.42.0/rules_go-v0.42.0.zip",
    ],
)

load("@io_bazel_rules_go//go:deps.bzl", "go_register_toolchains", "go_rules_dependencies")

go_rules_dependencies()

go_register_toolchains(version = "1.21.1")

http_archive(
    name = "googleapis",
    sha256 = "9d1a930e767c93c825398b8f8692eca3fe353b9aaadedfbcf1fca2282c85df88",
    strip_prefix = "googleapis-64926d52febbf298cb82a8f472ade4a3969ba922",
    urls = [
        "https://github.com/googleapis/googleapis/archive/64926d52febbf298cb82a8f472ade4a3969ba922.zip",
    ],
)

load("@googleapis//:repository_rules.bzl", "switched_rules_by_language")

switched_rules_by_language(
    name = "com_google_googleapis_imports",
)

version = "35d4667c932706bc023aa213e7b8e1e2c5d52237"

http_archive(
    name = "bazel_gazelle",
    strip_prefix = "bazel-gazelle-{}".format(version),
    urls = [
        "https://github.com/bazelbuild/bazel-gazelle/archive/{}.zip".format(version),
    ],
)

load("@bazel_gazelle//:deps.bzl", "gazelle_dependencies")
load("//:repo.bzl", "go_repos")

# gazelle:repository_macro repo.bzl%go_repos
go_repos()

gazelle_dependencies()

http_archive(
    name = "com_google_protobuf",
    sha256 = "40dafc7aa76ee0750ac926f1c5127f9a1e91322d6bf0aa4a14a18357151df593",
    strip_prefix = "github.com/protocolbuffers/protobuf@v3.15.2+incompatible",
    type = "zip",
    urls = [
        "https://goproxy.io/github.com/protocolbuffers/protobuf/@v/v3.15.2+incompatible.zip",
    ],
)
