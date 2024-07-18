# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class DylibInstaller < Formula
  desc "Tool to install dylib files and header to system library path written in Rust."
  homepage "https://github.com/hackerchai/dylib-installer"
  license "GPL-3.0"
  version "0.2.0"

  if Hardware::CPU.intel?
    url "https://github.com/hackerchai/dylib-installer/releases/download/v0.2.0/dylib_installer-macos-amd64"
    sha256 "8dbeae08fe0ecb4269701261d3cfb755f8f2d7803eb5fc8e44994b1df8e8abdc"
  elsif Hardware::CPU.arm?
    url "https://github.com/hackerchai/dylib-installer/releases/download/v0.2.0/dylib_installer-macos-arm64"
    sha256 "d0b3a8fc3cb03c8dd4d4e2f40632880b71751b1bfeed4c2602fadbc5e6da1218"
  end

  def install
    if Hardware::CPU.intel?
      bin.install "dylib_installer-macos-amd64" => "dylib_installer"
    elsif Hardware::CPU.arm?
      bin.install "dylib_installer-macos-arm64" => "dylib_installer"
    end
  end

  test do
    system "#{bin}/dylib_installer", "--help"
  end
end
