# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Spr < Formula
  desc "Stacked Pull Requests on GitHub"
  homepage "https://github.com/ejoffe/spr"
  version "0.9.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ejoffe/spr/releases/download/v0.9.1/spr_macos_x86_64.tar.gz"
      sha256 "d1b400eb7bc782f95eb7d61c3e9a851270735840070c2c42adc2b4901ba883c0"

      def install
        bin.install "git-spr"
        bin.install "git-amend"
        bin.install "spr_commit_hook"
        bin.install "spr_reword_helper"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ejoffe/spr/releases/download/v0.9.1/spr_macos_arm64.tar.gz"
      sha256 "38aaa735a1e882ec8cef2860d65f5f698f83c80e4ea5e333480e3b2060ca5e78"

      def install
        bin.install "git-spr"
        bin.install "git-amend"
        bin.install "spr_commit_hook"
        bin.install "spr_reword_helper"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ejoffe/spr/releases/download/v0.9.1/spr_linux_arm64.tar.gz"
      sha256 "472eabe8727528b58821fb55ea882d0bfd991618658f25d5967d2e7195460ed0"

      def install
        bin.install "git-spr"
        bin.install "git-amend"
        bin.install "spr_commit_hook"
        bin.install "spr_reword_helper"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ejoffe/spr/releases/download/v0.9.1/spr_linux_x86_64.tar.gz"
      sha256 "3e0cc54b47007decb871fb8667c22b795263932658006dff0576a26561bee314"

      def install
        bin.install "git-spr"
        bin.install "git-amend"
        bin.install "spr_commit_hook"
        bin.install "spr_reword_helper"
      end
    end
  end
end
