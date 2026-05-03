class Nfo < Formula
  desc "Minimal neofetch alternative written in bash"
  homepage "https://github.com/mnk400/nfo"
  url "https://github.com/mnk400/nfo/releases/download/v0.0.5/nfo-0.0.5.tar.gz"
  sha256 "6bf3627b1606d31aaeff9250eb948ed75de32d9b3f8e707dc5c5ce66caed5161"
  license "MIT"

  def install
    bin.install "nfo"

    # Install config files to share directory
    (share/"nfo").install "art.sh", "config.conf"
  end

  def caveats
    <<~EOS
      Configuration files have been installed to:
        #{share}/nfo

      To set up nfo, run:
        mkdir -p ~/.config/nfo
        cp #{share}/nfo/art.sh ~/.config/nfo/
        cp #{share}/nfo/config.conf ~/.config/nfo/

      Or use the one-liner install script from the README.
    EOS
  end

  test do
    system "#{bin}/nfo", "--help"
  end
end
