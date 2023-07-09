# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Spr < Formula
  desc "Stacked Pull Requests on GitHub"
  homepage "https://github.com/ejoffe/spr"
  version "0.13.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ejoffe/spr/releases/download/v0.13.1/spr_darwin_x86_64.tar.gz"
      sha256 "be2c09fcc1e66dc64e83aa0180e6cd1cc56f8511170677e57798bce0a31858cd"

      def install
        bin.install "git-spr"
        bin.install "git-amend"
        bin.install "spr_reword_helper"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ejoffe/spr/releases/download/v0.13.1/spr_darwin_arm64.tar.gz"
      sha256 "6fbd4f90f1d12f3f55aa55eec3656906a33cc396b928a31a382bd887d1b32dfe"

      def install
        bin.install "git-spr"
        bin.install "git-amend"
        bin.install "spr_reword_helper"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ejoffe/spr/releases/download/v0.13.1/spr_linux_x86_64.tar.gz"
      sha256 "a522bfe9d6f186150d883fd8d196e061a9aef205ef2564ffa3456548c8224846"

      def install
        bin.install "git-spr"
        bin.install "git-amend"
        bin.install "spr_reword_helper"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ejoffe/spr/releases/download/v0.13.1/spr_linux_arm64.tar.gz"
      sha256 "dd2429f766ee276a5d7c0e4fd80fc694518c51db018b7188f2691f85022ded74"

      def install
        bin.install "git-spr"
        bin.install "git-amend"
        bin.install "spr_reword_helper"
      end
    end
  end
end
