class Codeclip < Formula
  desc "Turn code into narrated videos"
  homepage "https://dq79lczicpi4v.cloudfront.net"
  version "0.1.0"
  license "MIT"

  depends_on arch: :arm64

  on_macos do
    url "https://github.com/sidhantchadda/homebrew-codeclip/releases/download/v0.1.0/codeclip-macos-arm64.tar.gz"
    sha256 "65ff63c5f0f6212e9c9efabc00316d1c86f42b6439e3b0b7d4852a6b63c25524"
  end

  on_linux do
    url "https://github.com/sidhantchadda/homebrew-codeclip/releases/download/v0.1.0/codeclip-linux-arm64.tar.gz"
    sha256 "74aff8cb0fdd88e4205b9f4f811e44a093056e7da45083768e623b225096f53c"
  end

  def install
    bin.install "codeclip"
  end

  test do
    assert_match "codeclip #{version}", shell_output("#{bin}/codeclip --version")
    assert_match "generate", shell_output("#{bin}/codeclip --help")
  end
end
