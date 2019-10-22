# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class PubsubCli < Formula
  desc "Handy google cloud Pub/Sub Emulator CLI"
  homepage "https://github.com/k-yomo/pubsub_cli"
  url "https://github.com/k-yomo/pubsub_cli/archive/v1.1.0.tar.gz"
  version "1.1.0"
  sha256 "0b06f048c1e424427c4e21faea766d517b1173a4286d452869e4e193edc8ea1b"

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
