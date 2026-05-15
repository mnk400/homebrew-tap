class Nfo < Formula
  desc "Minimal neofetch alternative written in bash"
  homepage "https://github.com/mnk400/nfo"
  url "https://github.com/mnk400/nfo/releases/download/v0.0.12/nfo-0.0.12.tar.gz"
  sha256 "6e501b2a9e8bb221c1a9bb6a47de6f8e292986921e3e78fbaa4eda85d07b9660"
  license "MIT"

  def install
    bin.install "nfo"

    # Install config files to share directory
    (share/"nfo").install "art", "nfo.conf"
  end

  def caveats
    <<~EOS
      Configuration files have been installed to:
        #{share}/nfo

      To set up nfo, run:
        mkdir -p ~/.config/nfo
        cp -r #{share}/nfo/art ~/.config/nfo/
        cp #{share}/nfo/nfo.conf ~/.config/nfo/

      Upgrading from a previous version? The config format and filename
      changed (config.conf → nfo.conf). Copy the new nfo.conf above and
      migrate your old print_out() into the new INFO_ROWS array.
    EOS
  end

  test do
    system "#{bin}/nfo", "--help"
  end
end
