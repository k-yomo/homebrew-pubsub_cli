VERSION="1.2.1"

class PubsubCli < Formula
  desc "Handy google cloud Pub/Sub Emulator CLI"
  homepage "https://github.com/k-yomo/pubsub_cli"
  url "https://github.com/k-yomo/pubsub_cli/archive/v#{VERSION}.tar.gz"
  version VERSION
  sha256 "b5941c079979bfb5af724a28f06267d26a8ecdd3bd331e4f3a1e22b56f4323ab"

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
