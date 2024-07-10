# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class DylibInstaller < Formula
  desc "Tool to install dylib files and header to system library path written in Rust."
  homepage "https://github.com/hackerchai/dylib-installer"
  url "https://github.com/hackerchai/dylib-installer"
  license "GPL-3.0"
  version "0.1.1"

  if Hardware::CPU.intel?
    url "https://github.com/hackerchai/dylib-installer/releases/download/v0.1.1/dylib_installer-macos-amd64"
    sha256 "7d1a8c3ed7f20f2dbecee2e253cce19a482254edb1956d4242f7e4c2acca7f48"
  elsif Hardware::CPU.arm?
    url "https://github.com/hackerchai/dylib-installer/releases/download/v0.1.1/dylib_installer-macos-arm64"
    sha256 "a43e3ed79ccffcd6d22896bf24e200b76cb6c7b65bbcb791c3ad70e94f1bb65e"
  end

  def install
    bin.install "dylib_installer"
  end

end
