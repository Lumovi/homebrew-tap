cask "lumovi" do
  arch arm: "arm64", intel: "x64"

  version "1.9.1"
  sha256 arm:   "006428c74497512edbf67942c7a5ade7b4b038b8695a48523031c057c2bcca60",
         intel: "5df6e85b75985b0fd4eae302c35036f5bf2e20fd0b4df534af7dc8ff73e01288"

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
