class Bend < Formula
  desc "Read the MacBook lid angle sensor from the command-line"
  homepage "https://github.com/mnk400/bend"
  url "https://github.com/mnk400/bend/releases/download/v0.0.5/bend-0.0.5-aarch64-macos.tar.gz"
  sha256 "b803593d44932291c6c66635d8ba3f6b247c6589cfe0f0f8bc25b0383b8583a4"
  license "GPL-3.0-only"

  def install
    bin.install "bend"
  end

  test do
    assert_match "bend #{version}", shell_output("#{bin}/bend --version")
  end
end
