class Codeclip < Formula
  desc "Turn code into narrated videos"
  homepage "https://dq79lczicpi4v.cloudfront.net"
  version "0.1.4"
  license "MIT"

  depends_on arch: :arm64

  on_macos do
    url "https://github.com/sidhantchadda/homebrew-codeclip/releases/download/v0.1.4/codeclip-macos-arm64.tar.gz"
    sha256 "20c8266de31a539671d91977cc102ee60888c65d3103ead797dd0b17dcadcf8a"
  end

  on_linux do
    url "https://github.com/sidhantchadda/homebrew-codeclip/releases/download/v0.1.4/codeclip-linux-arm64.tar.gz"
    sha256 "5ecbe4485f358243363c71693bbbcbd60a65018e5381e66c946eeefdf2be6743"
  end

  def install
    bin.install "codeclip"
  end

  test do
    assert_match "codeclip #{version}", shell_output("#{bin}/codeclip --version")
    assert_match "generate", shell_output("#{bin}/codeclip --help")
  end
end
