cask "sundown" do
  version "0.3.8"
  sha256 "25b7915ea57a40410dd402f88e2ab0cc21bf70b32b6685ac1844ca65333b7f4b"

  url "https://github.com/AFRUITPIE/Sundown/releases/download/v#{version}/Sundown-#{version}.zip"
  name "Sundown"
  desc "Native client for Claude Code, locally or over SSH"
  homepage "https://github.com/AFRUITPIE/Sundown"

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
