# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Spr < Formula
  desc "Stacked Pull Requests on GitHub"
  homepage "https://github.com/ejoffe/spr"
  version "0.1.3"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/ejoffe/spr/releases/download/v0.1.3/spr_macos_x86_64.tar.gz"
    sha256 "a69fe2a026545616af38ff5977111c99e8765a5d694d330d3116fc21feefca6a"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/ejoffe/spr/releases/download/v0.1.3/spr_macos_arm64.tar.gz"
    sha256 "8087e9ae38632b25f3f2e68217f44f0f9ec21fc7091cb2e531cb8500544af494"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/ejoffe/spr/releases/download/v0.1.3/spr_linux_x86_64.tar.gz"
    sha256 "5e286a8ecfe24807f75627e5e13190eb2b7371e29a0620f26f6085fa18984389"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/ejoffe/spr/releases/download/v0.1.3/spr_linux_arm64.tar.gz"
    sha256 "e39e34415b7eb30e26b60be02683a0e040d3f6e5249d03376bddd62f8b081a00"
  end

  def install
    bin.install "git-spr"
    bin.install "git-amend"
    bin.install "spr_commit_hook"
  end
end
