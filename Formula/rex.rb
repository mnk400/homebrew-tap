class Rex < Formula
  desc "Dynamic CLI tool that auto-discovers scripts from configured directories"
  homepage "https://github.com/mnk400/rex"
  url "https://github.com/mnk400/rex/releases/download/v0.0.7/rex-0.0.7.tar.gz"
  sha256 "eaabdfaebbf109cea93f3d2e942c14bef62bc5f084ed6d37886eed721e344bf6"
  license "MIT"

  def install
    bin.install "bin/rex"
  end

  test do
    system "#{bin}/rex", "version"
  end
end
