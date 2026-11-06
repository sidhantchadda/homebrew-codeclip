class Codeclip < Formula
  desc "Turn code into narrated videos"
  homepage "https://dq79lczicpi4v.cloudfront.net"
  version "0.1.2"
  license "MIT"

  depends_on arch: :arm64

  on_macos do
    url "https://github.com/sidhantchadda/homebrew-codeclip/releases/download/v0.1.2/codeclip-macos-arm64.tar.gz"
    sha256 "7e5e51c56bf1b6bc7ad579c59579686a8d134dff0474a1c607c19ae21217340a"
  end

  on_linux do
    url "https://github.com/sidhantchadda/homebrew-codeclip/releases/download/v0.1.2/codeclip-linux-arm64.tar.gz"
    sha256 "80460a757b29f1f2419ece2bd073c26ae33477cc3aac4b692f00304313b71565"
  end

  def install
    bin.install "codeclip"
  end

  test do
    assert_match "codeclip #{version}", shell_output("#{bin}/codeclip --version")
    assert_match "generate", shell_output("#{bin}/codeclip --help")
  end
end
