cask "lumovi" do
  arch arm: "arm64", intel: "x64"

  version "1.15.0"
  sha256 arm:   "39653c69b937c548386c0a65b2cdc774d83566d66dc02fdefafd4028f63a6101",
         intel: "a4547bd46a0daa18ddd5429a3dc9c2cfef02d5487269b433dfc2b9387de42147"

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
