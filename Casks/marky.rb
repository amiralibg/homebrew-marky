cask "marky" do
  arch arm: "aarch64", intel: "x64"

  version "1.10.0"
  sha256 arm:   "3e43facbce85ccb67acd2c3ae0f0b898ef04c636b72d912a5b7faccea8bb808a",
         intel: "c9e247f80a6083e25b186093e468b39920335581e38d16889b17f54cd89d1aa1"

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
