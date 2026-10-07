cask "lumovi" do
  arch arm: "arm64", intel: "x64"

  version "1.12.0"
  sha256 arm:   "9107569d8033b4176b5405ae16038cc054f27edf2e49651a1eabc93d82add2b3",
         intel: "9ca17f0f3bda5c4c02026a7945bc6384d7f3c0dd1044dbd3b630a2d011c2fd7b"

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
