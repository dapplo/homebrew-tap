cask "stripwolf" do
  version "v1.0.53"

  on_intel do
    sha256 "c9fe497298909fa11051550b6ec98685d1e480e1169a8f5997f7e0d4f9cff391"
    url "https://github.com/dapplo/StripWolf/releases/download/#{version}/StripWolf-macOS-x64-v1.0.53-geaec3d7.tar.gz"
  end
  on_arm do
    sha256 "3813daf8b82642d985dd305f248fec8070387c43f503343f0299ee5e2e018ff7"
    url "https://github.com/dapplo/StripWolf/releases/download/#{version}/StripWolf-macOS-arm64-v1.0.53-geaec3d7.tar.gz"
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
