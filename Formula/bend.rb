class Bend < Formula
  desc "Read the MacBook lid angle sensor from the command-line"
  homepage "https://github.com/mnk400/bend"
  url "https://github.com/mnk400/bend/releases/download/v0.0.3/bend-0.0.3-aarch64-macos.tar.gz"
  sha256 "5d2879fd0f5df02328c25597c68c9275fef6038acb63d5ffe4c59844a1fca397"
  license "GPL-3.0-only"

  def install
    bin.install "bend"
  end

  test do
    assert_match "bend #{version}", shell_output("#{bin}/bend --version")
  end
end
