cask "lumovi" do
  arch arm: "arm64", intel: "x64"

  version "1.20.0"
  sha256 arm:   "18334f053fba2573ed6634ecd133ae1e34fb3fd5e6a09476d816b912da0e2332",
         intel: "2a131c8da2318eb2ddf3c3f8ccc56474feb1b367fcbcd737f086509abc74241c"

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
