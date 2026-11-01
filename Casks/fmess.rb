cask "fmess" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.19"
  sha256 arm:   "9b2b82c8ebc737152a4741e63f6342946ee09fce46b6015327d016f205884cce",
         intel: "d50fe36500ab346a3997fd3b5598c8ee856645fe0ec052f0817d93367719cee0"

  url "https://github.com/toanbku/fmess/releases/download/v#{version}/fMess_#{version}_#{arch}.dmg"
  name "fMess"
  desc "Desktop app for Facebook Messenger"
  homepage "https://fmess.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :monterey

  app "fMess.app"

  zap trash: [
    "~/Library/Application Support/io.github.toanbku.fmess",
    "~/Library/Caches/io.github.toanbku.fmess",
    "~/Library/HTTPStorages/io.github.toanbku.fmess.binarycookies",
    "~/Library/Preferences/io.github.toanbku.fmess.plist",
    "~/Library/WebKit/io.github.toanbku.fmess",
  ]
end
