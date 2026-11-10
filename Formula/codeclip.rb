class Codeclip < Formula
  desc "Turn code into narrated videos"
  homepage "https://trycodeclip.com"
  version "0.1.5"
  license "MIT"

  depends_on arch: :arm64

  on_macos do
    url "https://github.com/sidhantchadda/homebrew-codeclip/releases/download/v0.1.5/codeclip-macos-arm64.tar.gz"
    sha256 "6338846b81863cc2e9c78879f69bf65f098c968ab90714f0632016ba780f00af"
  end

  on_linux do
    url "https://github.com/sidhantchadda/homebrew-codeclip/releases/download/v0.1.5/codeclip-linux-arm64.tar.gz"
    sha256 "e0bff34a5a00af3fdc7e88676f3585dc1e471e1c533c75ca380f4114a4b65333"
  end

  def install
    bin.install "codeclip"
  end

  test do
    assert_match "codeclip #{version}", shell_output("#{bin}/codeclip --version")
    assert_match "generate", shell_output("#{bin}/codeclip --help")
  end
end
