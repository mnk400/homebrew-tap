cask "gulp" do
  version "0.1.3"
  sha256 "8930c392acacfb4fb5383c3057fab733bfce6d2f6589aefe00de126d627c04b6"

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
