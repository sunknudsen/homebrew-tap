cask "borg-wrapper" do
  version "0.0.2"
  sha256 "e75ae3a22745ee51c082879f0bcb9886e3d73af40dbd0fbeba8cb54c93dacc8e"

  url "https://github.com/sunknudsen/borg-wrapper/releases/download/v#{version}/borg-wrapper-#{version}.dmg"
  appcast "https://github.com/sunknudsen/borg-wrapper/releases.atom"
  name "Borg Wrapper"
  desc "Borg Wrapper is a lightweight wrapper used to run (or schedule) Borg backups securely on macOS."
  homepage "https://github.com/sunknudsen/borg-wrapper"

  auto_updates true
  depends_on macos: ">= :mojave"
  depends_on formula: "borgbackup/tap/borgbackup-fuse"

  app "Borg Wrapper.app"

  uninstall pkgutil: "com.sunknudsen.borg-wrapper"
end
