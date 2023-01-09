# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class PubsubCli < Formula
  desc "Super handy cloud Pub/Sub CLI"
  homepage "https://github.com/k-yomo/pubsub_cli"
  version "1.7.3"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/k-yomo/pubsub_cli/releases/download/v1.7.3/pubsub_cli_1.7.3_Darwin_x86_64.tar.gz"
      sha256 "0e0973e759122a6f30ccaf714a60df24a8d8dfe7eb063ea341fcb6da884ef9ee"

      def install
        bin.install "pubsub_cli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/k-yomo/pubsub_cli/releases/download/v1.7.3/pubsub_cli_1.7.3_Darwin_arm64.tar.gz"
      sha256 "20fe1fb391d020c5b71a138dbe57ad5ac69c085a5e0e092a52e5aa1094cbd7a1"

      def install
        bin.install "pubsub_cli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/k-yomo/pubsub_cli/releases/download/v1.7.3/pubsub_cli_1.7.3_Linux_x86_64.tar.gz"
      sha256 "4d0bb92c92ec4b0664a602012d8588f4f32bec981a8f6d147791f46b187906ed"

      def install
        bin.install "pubsub_cli"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/k-yomo/pubsub_cli/releases/download/v1.7.3/pubsub_cli_1.7.3_Linux_arm64.tar.gz"
      sha256 "b6465175d58c8d545a06be90b618cc6998adcb9a9e24edd68ac72448f4737be1"

      def install
        bin.install "pubsub_cli"
      end
    end
  end

  test do
    system "#{bin}/pubsub_cli", "--version"
  end
end
