cask "fmess" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.35"
  sha256 arm:   "6c18d707ec3340d935d6f6c02c59c8f36660e28e98e6167616f4804e180deee9",
         intel: "5def6cfd390fcb621a308a92a5f09e9e3d2b897150baade929b49c0ed3a3cdc7"

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
