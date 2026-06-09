cask "stripwolf" do
  version "v1.0.50"

  on_intel do
    sha256 "339847f8fb071ab8780dd64d344ad5a354dd61893a277263b1f1b043dea4a935"
    url "https://github.com/dapplo/StripWolf/releases/download/#{version}/StripWolf-macOS-x64-v1.0.50-g6845279.tar.gz"
  end
  on_arm do
    sha256 "d5fedc8f89f44954459bdb8b7c94f159e3719a7007310644261dec3e8569e43a"
    url "https://github.com/dapplo/StripWolf/releases/download/#{version}/StripWolf-macOS-arm64-v1.0.50-g6845279.tar.gz"
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
