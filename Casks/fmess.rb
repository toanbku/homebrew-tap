cask "fmess" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.26"
  sha256 arm:   "52d59bffa18297b0f3585c4b3224f2dcf89ce50a9a44caf0915afbd37c1381c2",
         intel: "ba602a2feaca2f7493a1e23f1f40268508ffc35172a33835b903eff38fcd7b70"

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
