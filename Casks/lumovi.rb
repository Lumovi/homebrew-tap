cask "lumovi" do
  arch arm: "arm64", intel: "x64"

  version "1.23.0"
  sha256 arm:   "51f1df1449f36ea336925bfd8163eab947dadf65dbce27132d17b5e4eb3159ae",
         intel: "72d5a4c693b451c360f1885bd5f3b9a56851fb70dfae9396f74d7e6453086c1f"

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
