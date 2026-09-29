cask "marky" do
  arch arm: "aarch64", intel: "x64"

  version "1.8.12"
  sha256 arm:   "4aba22a8fe0b31a1f82990830bbe6c11abde98e06b2af6d707c3a1a2cf29c493",
         intel: "a3e78c010532c7b5992d30f6691cb09b61f84e6400c3955781afe91f9a87a2fd"

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
