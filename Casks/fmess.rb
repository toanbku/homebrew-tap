cask "fmess" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.28"
  sha256 arm:   "ffa045781a8f0e9e480012352ab22f4b2425e2fdbfa11b7ca6b855fb472a58a2",
         intel: "0978a6276a3db2ed334d147a7cc38cb60265b576aca9249051a3e5beedc430fe"

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
