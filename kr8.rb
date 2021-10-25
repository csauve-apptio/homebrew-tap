# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Kr8 < Formula
  desc "Opinionated configuration management tool for Kubernetes Cluster"
  homepage "https://kr8.rocks"
  version "0.3.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/apptio/kr8/releases/download/v0.3.2/kr8_0.3.2_darwin_amd64.tar.gz"
      sha256 "d0299105a9b4762e34846b756e89547b7b23bdc18b4ba6759b2cdfdbf24a3220"

      def install
        bin.install "kr8"
        bin.install "scripts/kr8-helpers"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/apptio/kr8/releases/download/v0.3.2/kr8_0.3.2_linux_amd64.tar.gz"
      sha256 "0ff39fb2398067ed7c07a10b9df05ff5a2f13a5f6e7e9d6d2caae6f6b4de3a5d"

      def install
        bin.install "kr8"
        bin.install "scripts/kr8-helpers"
      end
    end
  end

  depends_on "kubernetes-helm"
  depends_on "jsonnet"
  depends_on "go-task/tap/go-task"
end
