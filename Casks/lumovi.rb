cask "lumovi" do
  arch arm: "arm64", intel: "x64"

  version "1.11.0"
  sha256 arm:   "3b9c6153bf7083d666b48d0ab233f5fd9418a979987ca387b92574dbbdbb472a",
         intel: "3b54ec27ff4087e5cfd9702b7f0e2bcf4e462482d603c487f709ea551b5a1ef1"

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
