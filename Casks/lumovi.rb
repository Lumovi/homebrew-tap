cask "lumovi" do
  arch arm: "arm64", intel: "x64"

  version "1.14.0"
  sha256 arm:   "a7febfc88d15d0bdc8363e5d3d8ddeb41f7f4fd696bfaec4780ed398a6802437",
         intel: "a30460e1e6f87d624c02301a3033289b6713c8cf5a8241ab75e9131625f4ae69"

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
