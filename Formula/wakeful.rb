class Wakeful < Formula
  desc "Prevent automatic sleep and gracefully handle manual sleep by sending SIGINT to child processes"
  homepage "https://github.com/sunknudsen/wakeful"
  url "https://github.com/sunknudsen/wakeful/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "d1930695f58ce8376f547d2d253f7227dd687de18963ef85ab6edf1b719f0e65"
  license "MIT"

  depends_on macos: :sequoia

  def install
    system "swift", "build", "--configuration", "release", "--disable-sandbox"
    bin.install ".build/release/wakeful"
  end

  test do
    assert_match "Wakeful 1.1.0", shell_output("#{bin}/wakeful --version")
  end
end