# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class PubsubCli < Formula
  desc "Handy google cloud Pub/Sub Emulator CLI"
  homepage "https://github.com/k-yomo/pubsub_cli"
  url "https://github.com/k-yomo/pubsub_cli/archive/v1.1.0.tar.gz"
  version "1.1.1"
  sha256 "bd0453660522f487e8620acd1037359ea863da69f889cde28685d5ad54a9751b"

  depends_on "go" => :build

  def install
    ENV["GOPATH"] = buildpath
    ENV["GO111MODULE"] = "on"
    pubsub_cli_path = buildpath/"src/github.com/k-yomo/pubsub_cli/"
    pubsub_cli_path.install buildpath.children

    cd pubsub_cli_path do
      system "go", "mod", "vendor"
      system "go", "build"
      bin.install "pubsub_cli"
    end
  end
end
