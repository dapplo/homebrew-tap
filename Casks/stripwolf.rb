cask "stripwolf" do
  version "v1.0.63"

  on_intel do
    sha256 "b185ff7a86111d2527bb63b73ee0188c91cc9b11da8d24ec375bcc42340d0944"
    url "https://github.com/dapplo/StripWolf/releases/download/#{version}/StripWolf-macOS-x64-v1.0.63-gfed0290.tar.gz"
  end
  on_arm do
    sha256 "99a9eacff5530bed62fbac28260abc7fb4f838f0d76438d7588998cc5a3c2660"
    url "https://github.com/dapplo/StripWolf/releases/download/#{version}/StripWolf-macOS-arm64-v1.0.63-gfed0290.tar.gz"
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
