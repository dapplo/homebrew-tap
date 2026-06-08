cask "stripwolf" do
  version "v1.0.44"

  on_intel do
    sha256 "ce3d2c32019687751a65f786cd199d51224ce1634f5dfa7ca4eb0bcd4e99c3de"
    url "https://github.com/dapplo/StripWolf/releases/download/#{version}/StripWolf-macOS-x64-v1.0.44-g8f515b6.tar.gz"
  end
  on_arm do
    sha256 "9f9f25386876c897a309fcb0d84aef3f382564932bb996094aabacf0b5d8a435"
    url "https://github.com/dapplo/StripWolf/releases/download/#{version}/StripWolf-macOS-arm64-v1.0.44-g8f515b6.tar.gz"
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
