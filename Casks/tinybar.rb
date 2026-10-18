cask "tinybar" do
  version "0.5.1"
  sha256 "c3432c64c05a5ca399cf81bfdd8c96b5d7d9c384c25aa652eaaa323352cadef6"

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
