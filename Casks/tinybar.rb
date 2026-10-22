cask "tinybar" do
  version "0.6.0"
  sha256 "5e8773234566c9368d2ae5c97a46c5114941d9e04953defda7eca1ab94d1cafc"

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
