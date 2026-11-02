cask "tinybar" do
  version "0.11.0"
  sha256 "b754f0d252fb294af1f361751b77f33b6a6c0de4a0aa746bb14649632713e106"

  url "https://github.com/ThiloReintjes/tinybar/releases/download/v#{version}/Tinybar-#{version}.zip"
  name "Tinybar"
  desc "Menu bar app for AI subscription limits, token history and API-equivalent cost"
  homepage "https://github.com/ThiloReintjes/tinybar"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Tinybar.app"

  uninstall quit: "com.tinybar.app"

  zap trash: [
    "~/Library/Application Support/Tinybar",
    "~/Library/Preferences/com.tinybar.app.plist",
  ]
end
