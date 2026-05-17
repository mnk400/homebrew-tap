class Nfo < Formula
  desc "Minimal neofetch alternative written in bash"
  homepage "https://github.com/mnk400/nfo"
  url "https://github.com/mnk400/nfo/releases/download/v0.0.13/nfo-0.0.13.tar.gz"
  sha256 "45c19a7a296a11ceb38a0f22bf8614f4b20ac78cff86d6418306a34c54a7d61c"
  license "MIT"

  def install
    bin.install "nfo"

    # Install config files to share directory
    (share/"nfo").install "art", "nfo.conf"
  end

  def caveats
    <<~EOS
      On first run, nfo will copy default config and art into:
        ~/.config/nfo/

      Edit ~/.config/nfo/nfo.conf to customize.

      Upgrading from a pre-nfo.conf version? The config format and
      filename changed (config.conf → nfo.conf). Remove the old
      ~/.config/nfo/config.conf, let nfo recreate the defaults, then
      migrate your old print_out() into the new INFO_ROWS array.
    EOS
  end

  test do
    system "#{bin}/nfo", "--help"
  end
end
