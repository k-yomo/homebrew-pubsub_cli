VERSION="1.2.0"

class PubsubCli < Formula
  desc "Handy google cloud Pub/Sub Emulator CLI"
  homepage "https://github.com/k-yomo/pubsub_cli"
  url "https://github.com/k-yomo/pubsub_cli/archive/v#{VERSION}.tar.gz"
  version VERSION
  sha256 "f250d4ae2b4f26a6182d2d0e426c9acbf6582e2326507633b01896918dfd4ff0"

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
