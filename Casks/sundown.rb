cask "sundown" do
  version "0.3.3"
  sha256 "1c4e2744b96d9fd9c1a38c79967ddc49fc02ba93713582d0647a190f13a1b28a"

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
