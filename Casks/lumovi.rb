cask "lumovi" do
  arch arm: "arm64", intel: "x64"

  version "1.21.0"
  sha256 arm:   "af97be650a89bcb0901cce3e65908fc5cdb8b7cfc53124342583c8c35f846297",
         intel: "f871ab17e28cba373f0f189d5a4cc4e2ba8866718bbbbd3e00f2cb17718279f7"

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
