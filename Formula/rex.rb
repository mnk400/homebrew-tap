class Rex < Formula
  desc "Dynamic CLI tool that auto-discovers scripts from configured directories"
  homepage "https://github.com/mnk400/rex"
  url "https://github.com/mnk400/rex/releases/download/v0.0.1/rex-0.0.1.tar.gz"
  sha256 "38da6a5f0844fbf3d98c585fdb2b5587eeeb54570ac60932d9fdcaaded75487d"
  license "MIT"

  def install
    bin.install "bin/rex"
  end

  test do
    system "#{bin}/rex", "version"
  end
end
