cask "stripwolf" do
  version "v1.0.84"

  on_intel do
    sha256 "4a0e2f55ad715ee0b6791527d49013ffc9a17bf49593975536690b5dbbb22c34"
    url "https://github.com/dapplo/StripWolf/releases/download/#{version}/StripWolf-macOS-x64-v1.0.84-g5e724ff.tar.gz"
  end
  on_arm do
    sha256 "62c13e2991f68745fd3d104b2c39d2d5814ff8c20f89b597c9c8b5748dcb2f49"
    url "https://github.com/dapplo/StripWolf/releases/download/#{version}/StripWolf-macOS-arm64-v1.0.84-g5e724ff.tar.gz"
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
