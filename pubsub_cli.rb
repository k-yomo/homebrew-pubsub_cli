# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class PubsubCli < Formula
  desc "Handy google cloud Pub/Sub Emulator CLI"
  homepage "https://github.com/k-yomo/pubsub_cli"
  url "https://github.com/k-yomo/pubsub_cli/archive/v1.0.0.tar.gz"
  version "1.0.0"
  sha256 "f3a21e832bd400b475636997f7ab83296ed49294f7e5af9a68791fc759ccad66"

  def install
    bin.install 'pubsub_cli'
  end
end
