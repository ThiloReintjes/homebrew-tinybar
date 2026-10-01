cask "tinybar" do
  version "0.1.3"
  sha256 "6432b672927e8f9f3d93b45fb38a3e66b276add00669b0acf66155bfda399866"

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
