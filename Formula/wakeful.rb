class Wakeful < Formula
  desc "Prevent automatic sleep and gracefully handle manual sleep by sending SIGINT to child processes"
  homepage "https://github.com/sunknudsen/wakeful"
  url "https://github.com/sunknudsen/wakeful/archive/refs/tags/v1.2.0.tar.gz"
  sha256 "bbad2219154b2651eaa3b7046cebc35c055666481f5b55e7a74464f332b8db9c"
  license "MIT"

  depends_on macos: :sequoia

  def install
    system "swift", "build", "--configuration", "release", "--disable-sandbox"
    bin.install ".build/release/wakeful"
  end

  test do
    assert_match "Wakeful 1.2.0", shell_output("#{bin}/wakeful --version")
  end
end