cask "tinybar" do
  version "0.1.0"
  sha256 "b3a834ccd43b9e5df5fe888e90b0f632df3a86031339ed0e34fd326fdb162c2e"

  url "https://github.com/ThiloReintjes/tinybar/releases/download/v#{version}/Tinybar-#{version}.zip"
  name "Tinybar"
  desc "Menu bar app for AI subscription limits, token history and API-equivalent cost"
  homepage "https://github.com/ThiloReintjes/tinybar"

  depends_on macos: ">= :sonoma"

  app "Tinybar.app"

  uninstall quit: "com.tinybar.app"

  zap trash: [
    "~/Library/Application Support/Tinybar",
    "~/Library/Preferences/com.tinybar.app.plist",
  ]

  caveats <<~EOS
    Tinybar isn't notarized yet, so macOS blocks its first launch.
    Open it once, then go to System Settings → Privacy & Security and click Open Anyway.
  EOS
end
