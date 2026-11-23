cask "stripwolf" do
  version "v1.0.79"

  on_intel do
    sha256 "71420b36fd44c5f22f852ea5e8eb33fd07f7ccd769c86feebab88be21f7c6ea9"
    url "https://github.com/dapplo/StripWolf/releases/download/#{version}/StripWolf-macOS-x64-v1.0.79-gc97e8f0.tar.gz"
  end
  on_arm do
    sha256 "4f6d0cc322bcbcb16e41d373b5827e60f16e8af969f5296061c58c07ccffe77d"
    url "https://github.com/dapplo/StripWolf/releases/download/#{version}/StripWolf-macOS-arm64-v1.0.79-gc97e8f0.tar.gz"
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
