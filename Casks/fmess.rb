cask "fmess" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.20"
  sha256 arm:   "2fc3e02cad79857a7bf95e9897c7f18b55d4363eb46793fa0e4a72c3e18cec6b",
         intel: "b13e7e65e779243c7a669cb3d862d762b485694cabdd27988ec48fee2335d50b"

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
