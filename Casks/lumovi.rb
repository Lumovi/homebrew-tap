cask "lumovi" do
  arch arm: "arm64", intel: "x64"

  version "1.22.1"
  sha256 arm:   "3bae9c66127955ea9da2591e6bd04f212bba49c76c4d814c6571c3f683f97114",
         intel: "22b88e54886875d2fcb151afc06f0ec74408629e2f99cf582af2ab3a34e0107d"

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
