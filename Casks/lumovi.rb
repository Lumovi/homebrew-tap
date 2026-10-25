cask "lumovi" do
  arch arm: "arm64", intel: "x64"

  version "1.23.2"
  sha256 arm:   "48c0eed80d7914d4640e780f42d347553757d46aebd66e73469173bfc0388491",
         intel: "761cf7e912ee5af7ce00eb68a6e8d178524464d334e00c58c94e68544a39de55"

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
