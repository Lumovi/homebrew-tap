cask "lumovi" do
  arch arm: "arm64", intel: "x64"

  version "1.6.0"
  sha256 arm:   "aadc5c879feebe5004cbcd040b030f2329443024847ab8a2fa37c2e79b3afe34",
         intel: "2d6efb8e3a54baf80d29040050aee47dd55f9bdf6dfe17bed1a6a87e5bc48579"

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
