# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Spr < Formula
  desc "Stacked Pull Requests on GitHub"
  homepage "https://github.com/ejoffe/spr"
  version "0.4.0"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/ejoffe/spr/releases/download/v0.4.0/spr_macos_x86_64.tar.gz"
    sha256 "2a397de060186897b97d330e4ad9fa65a49b63cb032ac445361b4b4bf50317f6"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/ejoffe/spr/releases/download/v0.4.0/spr_macos_arm64.tar.gz"
    sha256 "cc69aab349b8b423d1e84ea5a9b3f81c6bca1b066be7d4aa6d5bc38fe74a7c6f"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/ejoffe/spr/releases/download/v0.4.0/spr_linux_x86_64.tar.gz"
    sha256 "6de04ab930a1548f5b7234721629ddb4756cf67d570637b0d8622db210f1fae4"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/ejoffe/spr/releases/download/v0.4.0/spr_linux_arm64.tar.gz"
    sha256 "d58086e7ef2cb3cc7a04dc9015c01cece2b536a0c823c5f558ecfdfe926f3be4"
  end

  def install
    bin.install "git-spr"
    bin.install "git-amend"
    bin.install "spr_commit_hook"
  end
end
