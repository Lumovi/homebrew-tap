cask "lumovi" do
  arch arm: "arm64", intel: "x64"

  version "1.23.1"
  sha256 arm:   "d8084e5c55bf7795700761390fd7f4439db9b6f548a14094b09dabe6a3dbc5d1",
         intel: "5f9d110d28d13e8535b9d5c375d898ffcf5e39aa2e2ed965df0423401c3c5c88"

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
