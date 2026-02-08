class Rex < Formula
  desc "Dynamic CLI tool that auto-discovers scripts from configured directories"
  homepage "https://github.com/mnk400/rex"
  url "https://github.com/mnk400/rex/releases/download/v0.0.5/rex-0.0.5.tar.gz"
  sha256 "ce0ffe9a0cd46d6f58d8d3f10610ae47a198d733dab0dd0948593aa67e46dc28"
  license "MIT"

  def install
    bin.install "bin/rex"
  end

  test do
    system "#{bin}/rex", "version"
  end
end
