cask "openyoink" do
  version "1.0"
  sha256 "750f09d846c966dfbb1de254942bd4da0bb724c20d6a0763410d59a22f8daa33"

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
