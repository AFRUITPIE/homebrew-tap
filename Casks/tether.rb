cask "tether" do
  version "0.1.4"
  sha256 "0f24808f136a869e4a921c2d0ca69cb0312dc02e0d97631ed76e2057308eb870"

  url "https://github.com/AFRUITPIE/tether-app/releases/download/v#{version}/Tether-#{version}.zip"
  name "Tether"
  desc "Native client for Claude Code, locally or over SSH"
  homepage "https://github.com/AFRUITPIE/tether-app"

  conflicts_with cask: "tether@beta"
  depends_on macos: :golden_gate

  app "Tether.app"

  zap trash: [
    "~/Library/Application Support/com.haydenhong.Tether",
    "~/Library/Caches/com.haydenhong.Tether",
    "~/Library/Preferences/com.haydenhong.Tether.plist",
    "~/Library/Saved Application State/com.haydenhong.Tether.savedState",
  ]
end
