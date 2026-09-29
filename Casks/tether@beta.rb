cask "tether@beta" do
  version "0.1.1-beta.202609291801"
  sha256 "0292c00673c6d203dc63d5bef351d441d04b237f2c32e3363aa76ef330858777"

  url "https://github.com/AFRUITPIE/tether-app/releases/download/v#{version}/Tether-#{version}.zip"
  name "Tether"
  desc "Native client for Claude Code, locally or over SSH (beta builds)"
  homepage "https://github.com/AFRUITPIE/tether-app"

  conflicts_with cask: "tether"
  depends_on macos: :golden_gate

  app "Tether.app"

  zap trash: [
    "~/Library/Application Support/com.haydenhong.Tether",
    "~/Library/Caches/com.haydenhong.Tether",
    "~/Library/Preferences/com.haydenhong.Tether.plist",
    "~/Library/Saved Application State/com.haydenhong.Tether.savedState",
  ]
end
