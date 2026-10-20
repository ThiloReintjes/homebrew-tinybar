cask "tinybar" do
  version "0.5.3"
  sha256 "30dd6f0202055a0f2fb5d04d01d22d73db95ee11a8c4d828e41abbc4b43e6019"

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
