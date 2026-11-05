cask "fmess" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.34"
  sha256 arm:   "858d1297de128d8d39d8281ee044ab08dd23487c789ec91f19f541c0b6b3e0f3",
         intel: "9ad3705ffb65a0b090fbcb5f25b111594eec01d8f374b29c7f2409b6679c5fff"

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
