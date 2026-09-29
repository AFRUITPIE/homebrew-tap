cask "tether" do
  version "0.1.1"
  sha256 "6af74d4206b345df8282de7480035df2007f92c2d50713dffdf72dc25ab89184"

  url "https://github.com/AFRUITPIE/tether-app/releases/download/v#{version}/Tether-#{version}.zip"
  name "Tether"
  desc "Native client for Claude Code, locally or over SSH"
  homepage "https://github.com/AFRUITPIE/tether-app"

  depends_on macos: :golden_gate

  app "Tether.app"

  zap trash: [
    "~/Library/Application Support/com.haydenhong.Tether",
    "~/Library/Caches/com.haydenhong.Tether",
    "~/Library/Preferences/com.haydenhong.Tether.plist",
    "~/Library/Saved Application State/com.haydenhong.Tether.savedState",
  ]
end
