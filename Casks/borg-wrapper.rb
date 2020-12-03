cask "borg-wrapper" do
  version "0.0.1"
  sha256 "0cd8baac2ddf2eba760931281321c5a8fcfaae5c3a4430520a5ba88fce3eb7dd"

  url "https://github.com/sunknudsen/borg-wrapper/releases/download/v#{version}/borg-wrapper-#{version}.dmg"
  appcast "https://github.com/sunknudsen/borg-wrapper/releases.atom"
  name "Borg Wrapper"
  desc "Borg Wrapper is a lightweight wrapper used the run (or schedule) Borg backups securely on macOS."
  homepage "https://github.com/sunknudsen/borg-wrapper"

  auto_updates true
  depends_on macos: ">= :mojave"
  depends_on formula: "borgbackup/tap/borgbackup-fuse"

  app "Borg Wrapper.app"

  uninstall pkgutil: "com.sunknudsen.borg-wrapper"
end