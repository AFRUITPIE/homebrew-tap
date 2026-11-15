cask "sundown" do
  version "0.5.0"
  sha256 "98696fa9b242677b838a8e259706f2c3233878c157e99a09881f9dab3ed0c2e7"

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
