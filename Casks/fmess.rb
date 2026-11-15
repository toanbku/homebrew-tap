cask "fmess" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.37"
  sha256 arm:   "638812923d6b567a48383f87bd1013325eeab80e89b8c9e31f0b617d6093b756",
         intel: "d52172a7d24ae951079260c0015d6a6fd4f15b191621607d6a1c50596c9fc40a"

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
