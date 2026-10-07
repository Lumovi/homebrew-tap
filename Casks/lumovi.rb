cask "lumovi" do
  arch arm: "arm64", intel: "x64"

  version "1.8.0"
  sha256 arm:   "368364517ad07a504002217932bfe5a2e50e55dc688639ecb183b7fecd9a4dfd",
         intel: "e760fc249ae8a92e5aa5464ee32ca938269f3b51f59273c9ad92944032cf4993"

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
