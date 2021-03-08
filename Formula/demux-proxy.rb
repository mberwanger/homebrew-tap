# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class DemuxProxy < Formula
  desc "Proxy that takes a single input and then switches it to any one of a number of interfaces"
  homepage "https://github.com/mberwanger/demux-proxy"
  version "0.2.0"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mberwanger/demux-proxy/releases/download/v0.2.0/demux-proxy_0.2.0_Darwin_x86_64.tar.gz"
    sha256 "692d7e14464c05be225829749cbd585624bbf78190fec0cc7396a9642cbe7dc7"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mberwanger/demux-proxy/releases/download/v0.2.0/demux-proxy_0.2.0_Darwin_arm64.tar.gz"
    sha256 "32fca26b834156e9153b78fbe77558cdb806a0db12c30d51e8eb99956c7d83fb"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mberwanger/demux-proxy/releases/download/v0.2.0/demux-proxy_0.2.0_Linux_x86_64.tar.gz"
    sha256 "a6b87051ee00ca029b41e89dc12249b9ec55d70edbc66bcc99dea498a4d2c669"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/mberwanger/demux-proxy/releases/download/v0.2.0/demux-proxy_0.2.0_Linux_armv6.tar.gz"
    sha256 "1a54e2717781931ef8ce4cddcac9ecb9e22a1b06b7de29497f6d073b94cb44e8"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/mberwanger/demux-proxy/releases/download/v0.2.0/demux-proxy_0.2.0_Linux_arm64.tar.gz"
    sha256 "b03b6441cdb9683454d7666149d598d17b00a3de3d1816fdd4d8b3fab73c2a0e"
  end

  depends_on "go"

  def install
    bin.install "demux-proxy"
  end

  test do
    system "#{bin}/demux-proxy -v"
  end
end
