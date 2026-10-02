cask "tether" do
  version "0.1.8"
  sha256 "0f96a5cf4566a4d2fb30dcb22b8f3a62ca1885a446b031dd538999b79908a046"

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
