class Codeclip < Formula
  desc "Turn code into narrated videos"
  homepage "https://dq79lczicpi4v.cloudfront.net"
  version "0.1.1"
  license "MIT"

  depends_on arch: :arm64

  on_macos do
    url "https://github.com/sidhantchadda/homebrew-codeclip/releases/download/v0.1.1/codeclip-macos-arm64.tar.gz"
    sha256 "546812967bfc4fbc2f787f45e8f53986b0acfcc56e416814b9d9491053c2315b"
  end

  on_linux do
    url "https://github.com/sidhantchadda/homebrew-codeclip/releases/download/v0.1.1/codeclip-linux-arm64.tar.gz"
    sha256 "f7db74ff23b0bc0e26f5570e4fa3f0d195f2d85a894156b8c1f2cc4fc0b64c06"
  end

  def install
    bin.install "codeclip"
  end

  test do
    assert_match "codeclip #{version}", shell_output("#{bin}/codeclip --version")
    assert_match "generate", shell_output("#{bin}/codeclip --help")
  end
end
