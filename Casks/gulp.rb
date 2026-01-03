cask "gulp" do
  version "0.1.2"
  sha256 "1194a81a942ebafe7b14da1a9bb9542fcdfd90030ab982d32b2ca0f0f6258e05"

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
