class Bend < Formula
  desc "Read the MacBook lid angle sensor from the command-line"
  homepage "https://github.com/mnk400/bend"
  url "https://github.com/mnk400/bend/releases/download/v0.0.4/bend-0.0.4-aarch64-macos.tar.gz"
  sha256 "51d50b12cd424e357282792c634fd77883a78d37bf5fc4b860524992b5a31cbb"
  license "GPL-3.0-only"

  def install
    bin.install "bend"
  end

  test do
    assert_match "bend #{version}", shell_output("#{bin}/bend --version")
  end
end
