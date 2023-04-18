# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Spr < Formula
  desc "Stacked Pull Requests on GitHub"
  homepage "https://github.com/ejoffe/spr"
  version "0.12.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ejoffe/spr/releases/download/v0.12.0/spr_macos_arm64.tar.gz"
      sha256 "ee8bd636df8f5f2d55203605a133a31ae0a5d70867c4de64004dec78ee1d8cdd"

      def install
        bin.install "git-spr"
        bin.install "git-amend"
        bin.install "spr_reword_helper"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ejoffe/spr/releases/download/v0.12.0/spr_macos_x86_64.tar.gz"
      sha256 "6317cec1af513a8a379b746d5472cfcac749e348d96c64e88aada40b49cb4c82"

      def install
        bin.install "git-spr"
        bin.install "git-amend"
        bin.install "spr_reword_helper"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ejoffe/spr/releases/download/v0.12.0/spr_linux_arm64.tar.gz"
      sha256 "4234a7d8b72478cb09525ca96264e2d0c1fa52737853488464745fd86c30eb68"

      def install
        bin.install "git-spr"
        bin.install "git-amend"
        bin.install "spr_reword_helper"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ejoffe/spr/releases/download/v0.12.0/spr_linux_x86_64.tar.gz"
      sha256 "ac726e6ee407af4495fc780b8a41b7b4875d881a669f79a6e58e84d3fd2c3407"

      def install
        bin.install "git-spr"
        bin.install "git-amend"
        bin.install "spr_reword_helper"
      end
    end
  end
end
