cask "openyoink" do
  version "1.0"
  sha256 "0fad5921a3bae52f019b2e2152a693b5f3d198d23c1396823ac5fb420984f96a"

  url "https://github.com/MuQY1818/OpenYoink/releases/download/v#{version}/OpenYoink-#{version}.dmg"
  name "OpenYoink"
  desc "Native macOS drag-and-drop shelf for files, text, images and links"
  homepage "https://github.com/MuQY1818/OpenYoink"

  livecheck do
    url :stable
    strategy :github_latest
  end

  app "OpenYoink.app"

  zap trash: "~/Library/Containers/com.weijue.OpenYoink"
end
