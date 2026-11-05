cask "marky" do
  arch arm: "aarch64", intel: "x64"

  version "1.9.2"
  sha256 arm:   "1b241be9b2c1778d45b26ff2da3967fa2b85a9233823193ad38d77793813e489",
         intel: "c80be0720c4e01bcb4920f5fa9064f8df5fc88c409f0025050bd325d210179a2"

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
