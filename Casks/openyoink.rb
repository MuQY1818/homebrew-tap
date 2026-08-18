cask "openyoink" do
  version "1.1.10"
  sha256 "189899d28e26669b5f3bd4a3bfe5555b0906253c0f55beb6df9d7b37c96e9280"

  url "https://github.com/MuQY1818/OpenYoink/releases/download/v#{version}/OpenYoink-#{version}.dmg"
  name "OpenYoink"
  desc "Drag-and-drop shelf for files, text, images and links"
  homepage "https://github.com/MuQY1818/OpenYoink"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sequoia

  app "OpenYoink.app"

  # 新版 Homebrew 会给 cask 下载打 quarantine（安装时被 Finder 拦截）。
  # 与本仓库 README 给手动安装者的指引一致：安装后移除 quarantine。
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/OpenYoink.app"]
  end

  zap trash: "~/Library/Containers/com.weijue.OpenYoink"
end
