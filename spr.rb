# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Spr < Formula
  desc "Stacked Pull Requests on GitHub"
  homepage "https://github.com/ejoffe/spr"
  version "0.6.1"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/ejoffe/spr/releases/download/v0.6.1/spr_macos_x86_64.tar.gz"
    sha256 "c87906510ab72c868d65133e9efb267129305fe5294f4fec8c731a17eda9e940"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/ejoffe/spr/releases/download/v0.6.1/spr_macos_arm64.tar.gz"
    sha256 "b2d843b10dd22ed924cf4a64f3ab82b9e9879af8778023c2100390eba39b72ef"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/ejoffe/spr/releases/download/v0.6.1/spr_linux_x86_64.tar.gz"
    sha256 "de19121e0421965df7a659936ead2904b7d6765c9b94b85d5d1a570a8f0aac5a"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/ejoffe/spr/releases/download/v0.6.1/spr_linux_arm64.tar.gz"
    sha256 "7a07237501d325bee053008abdc2de617a479acc7792112e209105723b0113c5"
  end

  def install
    bin.install "git-spr"
    bin.install "git-amend"
    bin.install "spr_commit_hook"
  end
end
