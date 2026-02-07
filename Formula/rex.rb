class Rex < Formula
  desc "Dynamic CLI tool that auto-discovers scripts from configured directories"
  homepage "https://github.com/mnk400/rex"
  url "https://github.com/mnk400/rex/releases/download/v0.0.3/rex-0.0.3.tar.gz"
  sha256 "d7e6a04f9528f077daf5cdc585782fc62c358bdc1218aed87d1d67632a80841b"
  license "MIT"

  def install
    bin.install "bin/rex"
  end

  test do
    system "#{bin}/rex", "version"
  end
end
