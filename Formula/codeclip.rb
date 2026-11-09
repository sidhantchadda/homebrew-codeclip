class Codeclip < Formula
  desc "Turn code into narrated videos"
  homepage "https://dq79lczicpi4v.cloudfront.net"
  version "0.1.3"
  license "MIT"

  depends_on arch: :arm64

  on_macos do
    url "https://github.com/sidhantchadda/homebrew-codeclip/releases/download/v0.1.3/codeclip-macos-arm64.tar.gz"
    sha256 "f65d10932b7b7bca7164e0bf4dcd01f89b624b1e7ff12bcae10b5f9ace713049"
  end

  on_linux do
    url "https://github.com/sidhantchadda/homebrew-codeclip/releases/download/v0.1.3/codeclip-linux-arm64.tar.gz"
    sha256 "b0aaf6e7a3986477307843bbe63b60d79cd28dfc99edd32bf77093d2f26030a6"
  end

  def install
    bin.install "codeclip"
  end

  test do
    assert_match "codeclip #{version}", shell_output("#{bin}/codeclip --version")
    assert_match "generate", shell_output("#{bin}/codeclip --help")
  end
end
