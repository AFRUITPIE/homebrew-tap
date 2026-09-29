cask "tether" do
  version "0.1"
  sha256 "852a758f357b8d740feb83ca9bc7134948e3c042a15b77f0902cf637b0a1c609"

  url "https://github.com/AFRUITPIE/tether-app/releases/download/v#{version}/Tether-#{version}.zip"
  name "Tether"
  desc "Native client for Claude Code on this Mac and over SSH"
  homepage "https://github.com/AFRUITPIE/tether-app"

  depends_on macos: ">= :golden_gate"

  app "Tether.app"

  zap trash: [
    "~/Library/Application Support/com.haydenhong.Tether",
    "~/Library/Caches/com.haydenhong.Tether",
    "~/Library/Preferences/com.haydenhong.Tether.plist",
    "~/Library/Saved Application State/com.haydenhong.Tether.savedState",
  ]
end
