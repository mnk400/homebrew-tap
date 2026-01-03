class Nfo < Formula
  desc "Minimal neofetch alternative written in bash"
  homepage "https://github.com/mnk400/nfo"
  url "https://github.com/mnk400/nfo/releases/download/v0.0.1/nfo-0.0.1.tar.gz"
  sha256 "b72702e74484f0018ad2b0f956ccfb93099008733fe0f7f57f2a456298e5a542"
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
