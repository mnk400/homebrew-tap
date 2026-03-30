class Bend < Formula
  desc "Read the MacBook lid angle sensor from the command-line"
  homepage "https://github.com/mnk400/bend"
  url "https://github.com/mnk400/bend/releases/download/v0.0.2/bend-0.0.2-aarch64-macos.tar.gz"
  sha256 "e879654014b4baf50c5cdf442642aaf3d78aa33ff7f3e77f3e2c532b793c8fbb"
  license "GPL-3.0-only"

  def install
    bin.install "bend"
  end

  test do
    assert_match "bend #{version}", shell_output("#{bin}/bend --version")
  end
end
