cask "sundown" do
  version "0.3.7"
  sha256 "f182c9e9e486c6fda1ce799ce6c4dd6c680c6c150983996fc25abbb5d7249507"

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
