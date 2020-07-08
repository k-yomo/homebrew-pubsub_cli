# This file was generated by GoReleaser. DO NOT EDIT.
class PubsubCli < Formula
  desc "Super handy cloud Pub/Sub CLI"
  homepage "https://github.com/k-yomo/pubsub_cli"
  version "1.4.1"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/k-yomo/pubsub_cli/releases/download/v1.4.1/pubsub_cli_1.4.1_Darwin_x86_64.tar.gz"
    sha256 "7964c99bdb5765d9a4b7d4f20f411b6f244d603c17cdf272f533acd5a85d9af4"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/k-yomo/pubsub_cli/releases/download/v1.4.1/pubsub_cli_1.4.1_Linux_x86_64.tar.gz"
      sha256 "02e1db5ecf235f11e9971c7aaf7a17158b4905eb437819b179fb9f7baf501907"
    end
  end

  def install
    bin.install "pubsub_cli"
  end

  test do
    system "#{bin}/pubsub_cli", "--version"
  end
end
