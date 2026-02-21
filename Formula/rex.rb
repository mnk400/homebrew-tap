class Rex < Formula
  desc "Dynamic CLI tool that auto-discovers scripts from configured directories"
  homepage "https://github.com/mnk400/rex"
  url "https://github.com/mnk400/rex/releases/download/v0.0.10/rex-0.0.10.tar.gz"
  sha256 "a125aafe350d25ebca7a4cbebf2c09ad528d423f0b69fe917fb4c232b509e0bd"
  license "MIT"

  def install
    bin.install "bin/rex"
  end

  test do
    system "#{bin}/rex", "version"
  end
end
