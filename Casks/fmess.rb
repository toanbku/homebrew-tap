cask "fmess" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.36"
  sha256 arm:   "4daaf93a3cc95650f36ffc92c96a9a76e851f7453f743d3ea8f7e9b6383e92ad",
         intel: "d5ccae88b918d474df85405e32dd273cd738c6af73a16386c043bf498d309284"

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
