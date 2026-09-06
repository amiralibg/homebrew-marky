cask "marky" do
  arch arm: "aarch64", intel: "x64"

  version "1.8.10"
  sha256 arm:   "79e75a2567461d9ba4cf65dd7bb8585b01a6ee2b4712b187076d39cac3977f4b",
         intel: "39521bca9c4abeab495f281975719008511ae6fe5c5869df2f9817312bd3b87b"

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
