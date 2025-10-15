class Wakeful < Formula
  desc "Prevent automatic sleep and gracefully handle manual sleep by sending SIGINT to child processes."
  homepage "https://github.com/sunknudsen/wakeful"
  url "https://github.com/sunknudsen/wakeful/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "0069208dc112af09a2dea8b4cf29a38dd0878d38c1ddfa8e4c3bcc9101079e66"
  license "MIT"

  depends_on macos: :sequoia

  def install
    system "swift", "build", "--configuration", "release", "--disable-sandbox"
    bin.install ".build/release/wakeful"
  end

  test do
    assert_match "Wakeful 1.0.0", shell_output("#{bin}/wakeful --version")
  end
end