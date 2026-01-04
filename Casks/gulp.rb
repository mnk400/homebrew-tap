cask "gulp" do
  version "0.1.6"
  sha256 "d2439e01cc24b671d54bdc5561fb4ca3607d0d87d77c009722c78770f117c783"

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
