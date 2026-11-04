cask "fmess" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.33"
  sha256 arm:   "809ee762e643a8e073f463ce21c544a87a3bfd8db45cada4781a6c68cf0607f9",
         intel: "1aebe7f26858ebff73d56b2b28aef7ce97c8ac1a7b2cefc94362902f09bd2a0b"

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
