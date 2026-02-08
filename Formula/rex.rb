class Rex < Formula
  desc "Dynamic CLI tool that auto-discovers scripts from configured directories"
  homepage "https://github.com/mnk400/rex"
  url "https://github.com/mnk400/rex/releases/download/v0.0.4/rex-0.0.4.tar.gz"
  sha256 "9fa3d2dd1d27a059bc8b85b19fa0705b9dd7633fc22f852212e43f06dfa03d9b"
  license "MIT"

  def install
    bin.install "bin/rex"
  end

  test do
    system "#{bin}/rex", "version"
  end
end
