# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Spr < Formula
  desc "Stacked Pull Requests on GitHub"
  homepage "https://github.com/ejoffe/spr"
  version "0.14.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ejoffe/spr/releases/download/v0.14.6/spr_darwin_arm64.tar.gz"
      sha256 "4a1ad52f0d5c362e5ce03ec2264d62586e5a45d86feb38de9251d2ff0bf816b4"

      def install
        bin.install "git-spr"
        bin.install "git-amend"
        bin.install "spr_reword_helper"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ejoffe/spr/releases/download/v0.14.6/spr_darwin_x86_64.tar.gz"
      sha256 "dec5b72d9b8edb11596faba05608ac239b96a664476815e2da88fac397b45406"

      def install
        bin.install "git-spr"
        bin.install "git-amend"
        bin.install "spr_reword_helper"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ejoffe/spr/releases/download/v0.14.6/spr_linux_arm64.tar.gz"
      sha256 "7858edb192595327d60ae358fbca8bb7c763ab4a46627618fcf86402c7c066a4"

      def install
        bin.install "git-spr"
        bin.install "git-amend"
        bin.install "spr_reword_helper"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ejoffe/spr/releases/download/v0.14.6/spr_linux_x86_64.tar.gz"
      sha256 "d29312b9c9fa8563e988b1bd0f9930c7c05ff6d38fdd4826c917fca5588bada1"

      def install
        bin.install "git-spr"
        bin.install "git-amend"
        bin.install "spr_reword_helper"
      end
    end
  end
end
