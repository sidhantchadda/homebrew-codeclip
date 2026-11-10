class Codeclip < Formula
  desc "Turn code into narrated videos"
  homepage "https://trycodeclip.com"
  version "0.1.7"
  license "MIT"

  depends_on arch: :arm64

  on_macos do
    url "https://github.com/sidhantchadda/homebrew-codeclip/releases/download/v0.1.7/codeclip-macos-arm64.tar.gz"
    sha256 "19f85cbb86c028b587757edbdc8760baab88d2d9a4e3b778a4d5392be37c7d96"
  end

  on_linux do
    url "https://github.com/sidhantchadda/homebrew-codeclip/releases/download/v0.1.7/codeclip-linux-arm64.tar.gz"
    sha256 "232dbb67ceff13a151ab4733e21b63a10d8fb0b6f3d010e77344015801502bfd"
  end

  def install
    bin.install "codeclip"
  end

  test do
    assert_match "codeclip #{version}", shell_output("#{bin}/codeclip --version")
    assert_match "generate", shell_output("#{bin}/codeclip --help")
  end
end
