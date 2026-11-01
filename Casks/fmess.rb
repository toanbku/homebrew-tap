cask "fmess" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.18"
  sha256 arm:   "c404c32dff7945f3e5c69bbacc99f6c0cdea9bc51e0c9347b6bb8237ee7de78e",
         intel: "c6ea374cec737fa19f0f8f0a4f33dd21c8a88e49cb5a7956f584af85a2fbe403"

  url "https://github.com/toanbku/fmess/releases/download/v#{version}/fMess_#{version}_#{arch}.dmg",
      verified: "github.com/toanbku/fmess/"
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
