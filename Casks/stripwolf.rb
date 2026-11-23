cask "stripwolf" do
  version "v1.0.83"

  on_intel do
    sha256 "8f517ca1595e156b7424248d1aaca67d587c393cc84e283e2af49b680575b43c"
    url "https://github.com/dapplo/StripWolf/releases/download/#{version}/StripWolf-macOS-x64-v1.0.83-g62aaee6.tar.gz"
  end
  on_arm do
    sha256 "fd203fe1674ad8acfc77df37c410d3b54f471885fcec07b21c5a716b75db99b5"
    url "https://github.com/dapplo/StripWolf/releases/download/#{version}/StripWolf-macOS-arm64-v1.0.83-g62aaee6.tar.gz"
  end

  name "StripWolf"
  desc "Cross-platform comic book reader with Komga integration"
  homepage "https://github.com/dapplo/StripWolf"

  app "StripWolf.app"

  zap trash: [
    "~/Library/Application Support/StripWolf",
    "~/Library/Preferences/net.dapplo.stripwolf.plist",
    "~/Library/Saved Application State/net.dapplo.stripwolf.savedState",
  ]
end
