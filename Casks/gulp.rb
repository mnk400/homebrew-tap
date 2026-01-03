cask "gulp" do
  version "0.1.0"
  sha256 :no_check # Will be updated by CI

  url "https://github.com/mnk400/Gulp/releases/download/v#{version}/Gulp-#{version}.dmg"
  name "Gulp"
  desc "Simple macOS app for gallery-dl with history and log management"
  homepage "https://github.com/mnk400/Gulp"

  depends_on formula: "gallery-dl"

  app "Gulp.app"

  zap trash: [
    "~/Library/Application Support/Gulp",
    "~/Library/Preferences/com.mnk.Gulp.plist",
  ]
end
