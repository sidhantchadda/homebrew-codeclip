class Codeclip < Formula
  desc "Turn code into narrated videos"
  homepage "https://trycodeclip.com"
  version "0.1.6"
  license "MIT"

  depends_on arch: :arm64

  on_macos do
    url "https://github.com/sidhantchadda/homebrew-codeclip/releases/download/v0.1.6/codeclip-macos-arm64.tar.gz"
    sha256 "303e37ddd9c05c7d27aaa2a5c4a49c4501586363aed847e2dbdd3953fe85731e"
  end

  on_linux do
    url "https://github.com/sidhantchadda/homebrew-codeclip/releases/download/v0.1.6/codeclip-linux-arm64.tar.gz"
    sha256 "1f44154612fe55b6bd7490f861aeac899f42ad17fce75a9ae87b4c06d1bf1711"
  end

  def install
    bin.install "codeclip"
  end

  test do
    assert_match "codeclip #{version}", shell_output("#{bin}/codeclip --version")
    assert_match "generate", shell_output("#{bin}/codeclip --help")
  end
end
