class Rex < Formula
  desc "Dynamic CLI tool that auto-discovers scripts from configured directories"
  homepage "https://github.com/mnk400/rex"
  url "https://github.com/mnk400/rex/releases/download/v0.0.2/rex-0.0.2.tar.gz"
  sha256 "b288e6bfe9fe86279cb9d1619741825842674faf92b077ad026aef3d4da20c74"
  license "MIT"

  def install
    bin.install "bin/rex"
  end

  test do
    system "#{bin}/rex", "version"
  end
end
