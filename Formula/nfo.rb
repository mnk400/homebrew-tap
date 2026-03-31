class Nfo < Formula
  desc "Minimal neofetch alternative written in bash"
  homepage "https://github.com/mnk400/nfo"
  url "https://github.com/mnk400/nfo/releases/download/v0.0.4/nfo-0.0.4.tar.gz"
  sha256 "e6dd3650f28fdaf6940c037704602f509346665960425283df750c1103afdaae"
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
