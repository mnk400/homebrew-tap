class Bend < Formula
  desc "Read the MacBook lid angle sensor from the command line"
  homepage "https://github.com/mnk400/bend"
  version "0.0.1"
  license "MIT"

  url "https://github.com/mnk400/bend/releases/download/v0.0.1/bend-0.0.1-aarch64-macos.tar.gz"
  sha256 "c964e08677243f2346f374e98ba669487ec1e73588c22d6e05755216d652d93e"

  def install
    bin.install "bend"
  end

  test do
    assert_match "bend #{version}", shell_output("#{bin}/bend --version")
  end
end
