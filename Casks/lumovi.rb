cask "lumovi" do
  arch arm: "arm64", intel: "x64"

  version "1.16.0"
  sha256 arm:   "d14407d2dc260c84ae33a085b768b0441039217545b36e466c1bf9ddd6a3bd48",
         intel: "f78026af04760deb5bafb5c8f61c736d9f2759e18046324084870d3770413a0c"

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
