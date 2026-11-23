cask "stripwolf" do
  version "v1.0.81"

  on_intel do
    sha256 "c66ffa279ee50507b04fd819eabad8a92df2395d2b66e2240e247e3e5a0738f2"
    url "https://github.com/dapplo/StripWolf/releases/download/#{version}/StripWolf-macOS-x64-v1.0.81-gf8c22fa.tar.gz"
  end
  on_arm do
    sha256 "3582dac5477f59f5d172ea1cad3565b252b0365f9ef98928cc377cd486aee0f4"
    url "https://github.com/dapplo/StripWolf/releases/download/#{version}/StripWolf-macOS-arm64-v1.0.81-gf8c22fa.tar.gz"
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
