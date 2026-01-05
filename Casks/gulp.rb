cask "gulp" do
  version "0.1.7"
  sha256 "18dab566a6c2780df57b858019c7615c6f2c057f5c88b34ad8a549494ecde5e5"

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
