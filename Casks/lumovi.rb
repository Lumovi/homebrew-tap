cask "lumovi" do
  arch arm: "arm64", intel: "x64"

  version "1.22.0"
  sha256 arm:   "715a117f77d33a170b9a2fc5988b2b9d0a77530164fc4dde7ec633b29d9bdfa8",
         intel: "99ac8f6f0da34c002fefd28f1489d7ea602895e46c66749b421cf780a95c3340"

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
