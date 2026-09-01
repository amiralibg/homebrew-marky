cask "marky" do
  arch arm: "aarch64", intel: "x64"

  version "1.8.9"
  sha256 arm:   "d58e7270e56f2c438630c81b30fdee57bd69d6b80821ca2919c34c456170bfca",
         intel: "70a5c640028ddef659987d541e38db89434e3831c26b4ebc102435f129885f1b"

  url "https://github.com/amiralibg/marky/releases/download/v#{version}/Marky_#{version}_#{arch}.dmg"
  name "Marky"
  desc "Beautiful markdown note-taking app"
  homepage "https://github.com/amiralibg/marky"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :high_sierra

  app "Marky.app"

  zap trash: [
    "~/Library/Application Support/com.amiralibg.marky",
    "~/Library/Caches/com.amiralibg.marky",
    "~/Library/WebKit/com.amiralibg.marky",
  ]
end
