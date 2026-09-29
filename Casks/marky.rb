cask "marky" do
  arch arm: "aarch64", intel: "x64"

  version "1.8.11"
  sha256 arm:   "23e69e20ca98f134b15ca47ea907ff5d93383c01f1c9df2259e5968a2b9cf2e5",
         intel: "b66579a04406d730a69954006367c0b6ecd8683760a39d05690ab1848e06d770"

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
