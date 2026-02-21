class Rex < Formula
  desc "Dynamic CLI tool that auto-discovers scripts from configured directories"
  homepage "https://github.com/mnk400/rex"
  url "https://github.com/mnk400/rex/releases/download/v0.0.11/rex-0.0.11.tar.gz"
  sha256 "f4fc10c995fe47627fa0b2a04bdd743e504f0dd1298058154e72e4ed3fc8e1eb"
  license "MIT"

  def install
    bin.install "bin/rex"
  end

  test do
    system "#{bin}/rex", "version"
  end
end
