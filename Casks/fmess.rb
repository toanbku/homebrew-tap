cask "fmess" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.25"
  sha256 arm:   "4d90df9993e8fd48695d4c54111c132ae231680ff4f8a74b364d7c1b46d44c09",
         intel: "4aca4a017e6754061bb39db5c025b141d9dc1f919f53e06b81c802e547fa9b17"

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
