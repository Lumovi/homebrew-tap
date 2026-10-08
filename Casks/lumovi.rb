cask "lumovi" do
  arch arm: "arm64", intel: "x64"

  version "1.13.0"
  sha256 arm:   "70729ef936b4ed5c13a48376b7cfb36d1a76a24506bc6a9e9a155d3f57ceb841",
         intel: "8c3182ddad98925fcbcc8e209ea65b580d66f75bd0e6c62b3be42f69ae78e731"

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
