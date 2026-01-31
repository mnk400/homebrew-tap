cask "gulp" do
  version "0.1.10"
  sha256 "d2e8b1e1ce897b89ce6ba0c5fa13427951291c0027b6a28b33ad15a2a1b23145"

  url "https://github.com/mnk400/Gulp/releases/download/v#{version}/Gulp-#{version}.dmg"
  name "Gulp"
  desc "Gallery-DL front-end in Swift UI"
  homepage "https://github.com/mnk400/Gulp"

  depends_on formula: "gallery-dl"

  app "Gulp.app"

  zap trash: [
    "~/Library/Application Support/Gulp",
    "~/Library/Preferences/com.mnk.Gulp.plist",
  ]
end
