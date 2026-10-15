cask "tinybar" do
  version "0.3.0"
  sha256 "971cba912aa8adc9f9e2fb41c2ed0ba40bb5fccc4ebd555a550144b995c84191"

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
