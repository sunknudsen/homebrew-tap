cask "borg-wrapper" do
  version "0.0.3"
  sha256 "ffa9714b17106d58c5f4ee9640d7120d9ada14c41f6fefba58307eabb41179a1"

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