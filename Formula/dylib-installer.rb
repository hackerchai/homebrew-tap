# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class DylibInstaller < Formula
  desc "Tool to install dylib files and header to system library path written in Rust."
  homepage "https://github.com/hackerchai/dylib-installer"
  url "https://github.com/hackerchai/dylib-installer"
  license "GPL-3.0"
  version "0.1.0"

  if Hardware::CPU.intel?
    url "https://github.com/hackerchai/dylib-installer/releases/download/v0.1.0/dylib_installer-macos-amd64"
    sha256 "a274e7f0aee3eeda51dc0862d237c69fc1d0c60dafebd682cf61e99eac3ab367"
  elsif Hardware::CPU.arm?
    url "https://github.com/hackerchai/dylib-installer/releases/download/v0.1.0/dylib_installer-macos-arm64"
    sha256 "f7c771eabbf8cb20e20b555ef0eb4a1ea8cd20ac522c3e3ed2149ceafba9e60f"
  end

  def install
    bin.install "dylib-installer"
  end

  test do
    system "#{bin}/dylib-installer", "--help"
  end
end
