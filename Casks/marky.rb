cask "marky" do
  arch arm: "aarch64", intel: "x64"

  version "1.9.0"
  sha256 arm:   "c379004af8f29307920a050a8be44b51b32561064770619c1bef800fc72aa29a",
         intel: "66696a181724d41c47a098f40cb87b0a2419833598c4c5f18258e81c39c3c363"

  url "https://github.com/amiralibg/marky/releases/download/v#{version}/Marky_#{version}_#{arch}.dmg"
  name "Marky"
  desc "Beautiful markdown note-taking app"
  homepage "https://github.com/amiralibg/marky"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "Marky.app"

  zap trash: [
    "~/Library/Application Support/com.amiralibg.marky",
    "~/Library/Caches/com.amiralibg.marky",
    "~/Library/WebKit/com.amiralibg.marky",
  ]
end
