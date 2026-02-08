class Rex < Formula
  desc "Dynamic CLI tool that auto-discovers scripts from configured directories"
  homepage "https://github.com/mnk400/rex"
  url "https://github.com/mnk400/rex/releases/download/v0.0.6/rex-0.0.6.tar.gz"
  sha256 "09879199e630f6cb9d95ec2c0926d12c9efb711b06684c4c17ebe5c5505c9911"
  license "MIT"

  def install
    bin.install "bin/rex"
  end

  test do
    system "#{bin}/rex", "version"
  end
end
