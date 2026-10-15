cask "tinybar" do
  version "0.4.0"
  sha256 "f2763d1e1402c3a92337eed63bb4fafade4cdd21c5d4d1c3ba2c9a4e1c9ad3ea"

  url "https://github.com/ThiloReintjes/tinybar/releases/download/v#{version}/Tinybar-#{version}.zip"
  name "Tinybar"
  desc "Menu bar app for AI subscription limits, token history and API-equivalent cost"
  homepage "https://github.com/ThiloReintjes/tinybar"

  depends_on macos: :sonoma

  app "Tinybar.app"

  uninstall quit: "com.tinybar.app"

  zap trash: [
    "~/Library/Application Support/Tinybar",
    "~/Library/Preferences/com.tinybar.app.plist",
  ]

  caveats <<~EOS
    Not notarized yet: on first launch, click Done, then Open Anyway in
    System Settings → Privacy & Security.
  EOS
end
