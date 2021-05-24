# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Spr < Formula
  desc "Stacked Pull Requests on GitHub"
  homepage "https://github.com/ejoffe/spr"
  version "0.1.1"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/ejoffe/spr/releases/download/v0.1.1/spr_macos_x86_64.tar.gz"
    sha256 "14af13eb14022789a4fa972207632e3bf88ac812c821f23ba494d816b00e949a"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/ejoffe/spr/releases/download/v0.1.1/spr_macos_arm64.tar.gz"
    sha256 "c81d055084a1811f7174f150273cc02098f268e0e36fb2cc541114475d4a9a1e"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/ejoffe/spr/releases/download/v0.1.1/spr_linux_x86_64.tar.gz"
    sha256 "b5fcd36d21562de3ea806cb9f01de9c9feaa81e2dcb625682c944c411c81a297"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/ejoffe/spr/releases/download/v0.1.1/spr_linux_arm64.tar.gz"
    sha256 "6b6e6c1e1b85c92bb8fd82b46097e74d0ceb5c1af9d62a789f2697bfe6bd0db7"
  end

  def install
    bin.install "git-spr"
    bin.install "git-amend"
    bin.install "spr_commit_hook"
  end
end
