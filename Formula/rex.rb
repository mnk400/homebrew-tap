class Rex < Formula
  desc "Dynamic CLI tool that auto-discovers scripts from configured directories"
  homepage "https://github.com/mnk400/rex"
  url "https://github.com/mnk400/rex/releases/download/v0.0.14/rex-0.0.14.tar.gz"
  sha256 "d1bad1ce3c9c89d24d629e43ae7e22216c09f1e18656b55529b3282291f5194e"
  license "MIT"

  def install
    bin.install "bin/rex"
  end

  test do
    system "#{bin}/rex", "version"
  end
end
