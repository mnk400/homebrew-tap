class Rex < Formula
  desc "Dynamic CLI tool that auto-discovers scripts from configured directories"
  homepage "https://github.com/mnk400/rex"
  url "https://github.com/mnk400/rex/releases/download/v0.0.12/rex-0.0.12.tar.gz"
  sha256 "b2aa78d84500e7ddcbab29af2426ab317aa46dbc37620f9758c2eb4706d5fb60"
  license "MIT"

  def install
    bin.install "bin/rex"
  end

  test do
    system "#{bin}/rex", "version"
  end
end
