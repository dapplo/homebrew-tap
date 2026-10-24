cask "stripwolf" do
  version "v1.0.74"

  on_intel do
    sha256 "a8aba542a9be90812740d60f8a3c29e9a8d2e8fb9ef8e4afdff91b5bd40862e7"
    url "https://github.com/dapplo/StripWolf/releases/download/#{version}/StripWolf-macOS-x64-v1.0.74-gf1c0d7e.tar.gz"
  end
  on_arm do
    sha256 "1fc1d1c8c018f8a7527c2ba89422034b59b332129325399ae837b4385f5b08b5"
    url "https://github.com/dapplo/StripWolf/releases/download/#{version}/StripWolf-macOS-arm64-v1.0.74-gf1c0d7e.tar.gz"
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
