class Nfo < Formula
  desc "Minimal neofetch alternative written in bash"
  homepage "https://github.com/mnk400/nfo"
  url "https://github.com/mnk400/nfo/releases/download/v0.0.9/nfo-0.0.9.tar.gz"
  sha256 "c7e184922839e0e5dd0c93a8f0c029320a3eb75b41a2d37fb5f884a87e02fbaa"
  license "MIT"

  def install
    bin.install "nfo"

    # Install config files to share directory
    (share/"nfo").install "art", "config.conf"
  end

  def caveats
    <<~EOS
      Configuration files have been installed to:
        #{share}/nfo

      To set up nfo, run:
        mkdir -p ~/.config/nfo
        cp -r #{share}/nfo/art ~/.config/nfo/
        cp #{share}/nfo/config.conf ~/.config/nfo/

      Or use the one-liner install script from the README.
    EOS
  end

  test do
    system "#{bin}/nfo", "--help"
  end
end
