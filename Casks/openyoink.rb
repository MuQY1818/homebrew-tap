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

  # 新版 Homebrew 会给 cask 下载打 quarantine（安装时被 Finder 拦截）。
  # 与本仓库 README 给手动安装者的指引一致：安装后移除 quarantine。
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/OpenYoink.app"]
  end

  zap trash: "~/Library/Containers/com.weijue.OpenYoink"
end
