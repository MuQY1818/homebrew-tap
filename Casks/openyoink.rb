cask "openyoink" do
  version "1.6.6"
  sha256 "03bb3086002982a68ebb12bae630bd5e703d7045f9777dc5d04bfe3174a24b04"

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
