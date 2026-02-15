class Rex < Formula
  desc "Dynamic CLI tool that auto-discovers scripts from configured directories"
  homepage "https://github.com/mnk400/rex"
  url "https://github.com/mnk400/rex/releases/download/v0.0.8/rex-0.0.8.tar.gz"
  sha256 "d59ed30fb58753b7893528a3ba4e8816ce8d55732efeb5b60513d8a7d9b29f03"
  license "MIT"

  def install
    bin.install "bin/rex"
  end

  test do
    system "#{bin}/rex", "version"
  end
end
