cask "fmess" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.29"
  sha256 arm:   "5ea146db07529c1e61e7a6d3cf3a1ee4c06f177ee5158cee636f3c2a78f6daeb",
         intel: "4967a49028089e0ff9f203b9fb546cc9587f8ea45928100d99e1751b64c0b91b"

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
