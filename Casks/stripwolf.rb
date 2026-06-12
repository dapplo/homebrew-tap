cask "stripwolf" do
  version "v1.0.52"

  on_intel do
    sha256 "583112823a495ada2acb2fb6a3510e3082db448ed6fb7c52b0a2b07892f9205d"
    url "https://github.com/dapplo/StripWolf/releases/download/#{version}/StripWolf-macOS-x64-v1.0.52-g8a7bed6.tar.gz"
  end
  on_arm do
    sha256 "b679358d3498a77b32871d059f1f1f4687f4b02eca5bd2499926a266cca3a229"
    url "https://github.com/dapplo/StripWolf/releases/download/#{version}/StripWolf-macOS-arm64-v1.0.52-g8a7bed6.tar.gz"
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
