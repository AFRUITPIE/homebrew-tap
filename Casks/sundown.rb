cask "sundown" do
  version "0.3.0"
  sha256 "aba33f431303fae0b3130c8dc29a45c367c21e2279968a257c207ef80c1ff91f"

  url "https://github.com/AFRUITPIE/tether-app/releases/download/v#{version}/Sundown-#{version}.zip"
  name "Sundown"
  desc "Native client for Claude Code, locally or over SSH"
  homepage "https://github.com/AFRUITPIE/tether-app"

  conflicts_with cask: "sundown@beta"
  depends_on macos: :golden_gate

  app "Sundown.app"

  zap trash: [
    "~/Library/Application Support/com.haydenhong.Sundown",
    "~/Library/Caches/com.haydenhong.Sundown",
    "~/Library/Preferences/com.haydenhong.Sundown.plist",
    "~/Library/Saved Application State/com.haydenhong.Sundown.savedState",
  ]
end
