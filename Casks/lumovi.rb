cask "lumovi" do
  arch arm: "arm64", intel: "x64"

  version "1.17.0"
  sha256 arm:   "e8d2116b4ba6901d561f31d90973916d3fa04756e74b87fc7ab90e13c0227a49",
         intel: "fb987d3c233dd9f79c0c435500c096f2b9ff3ca63a10cf4e677faf3f082cc54e"

  url "https://github.com/Lumovi/Lumovi/releases/download/v#{version}/Lumovi-#{version}-mac-#{arch}.dmg"
  name "Lumovi"
  desc "Kubernetes dashboard for the desktop"
  homepage "https://lumovi.dev/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :ventura

  app "Lumovi.app"

  zap trash: [
    "~/Library/Application Support/Lumovi",
    "~/Library/Caches/dev.lumovi.app",
    "~/Library/Caches/dev.lumovi.app.ShipIt",
    "~/Library/Logs/Lumovi",
    "~/Library/Preferences/dev.lumovi.app.plist",
    "~/Library/Saved Application State/dev.lumovi.app.savedState",
  ]
end
