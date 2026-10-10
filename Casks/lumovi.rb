cask "lumovi" do
  arch arm: "arm64", intel: "x64"

  version "1.19.0"
  sha256 arm:   "e4b483e9a128cb665ae81e5fa9ab89f6ed18377cab4c15a86c10e8042873017e",
         intel: "ba8843684893223efaf615879b842d4f4faaee79c4333f8d8bacf021b6643fe4"

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
