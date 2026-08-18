cask "openyoink" do
  version "1.0"
  sha256 "64018feb361c5ed67a89947e0974fceb6dfe3fb0549a322bbe5e92f80c32d90d"

  url "https://github.com/MuQY1818/Open-Yoink/releases/download/v#{version}/OpenYoink-#{version}.dmg"
  name "OpenYoink"
  desc "Native macOS drag-and-drop shelf for files, text, images and links"
  homepage "https://github.com/MuQY1818/Open-Yoink"

  livecheck do
    url :stable
    strategy :github_latest
  end

  app "OpenYoink.app"

  zap trash: "~/Library/Containers/com.weijue.OpenYoink"
end
