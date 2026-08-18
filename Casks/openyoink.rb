cask "openyoink" do
  version "1.0.1"
  sha256 "296bfccd66c3a68f943ae521ebaa4b2efdeb4301ddda4eccbb15a09a11cf1950"

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
