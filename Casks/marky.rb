cask "marky" do
  arch arm: "aarch64", intel: "x64"

  version "1.9.1"
  sha256 arm:   "4f20bc1bd999629efa6e20c756e076cde21d6d8aa1e402ee3061fab05378fd3e",
         intel: "0c2dc954a708fcb364f7342a3e9d769b6734fa30a710add6c2751343f08cbef5"

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
