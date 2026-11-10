class Codeclip < Formula
  desc "Turn code into narrated videos"
  homepage "https://trycodeclip.com"
  version "0.1.8"
  license "MIT"

  depends_on arch: :arm64

  on_macos do
    url "https://github.com/sidhantchadda/homebrew-codeclip/releases/download/v0.1.8/codeclip-macos-arm64.tar.gz"
    sha256 "fd5fa193834f24eaee6241c607f0c8c71acdf55e658ad7d4df74bb5c7b87938e"
  end

  on_linux do
    url "https://github.com/sidhantchadda/homebrew-codeclip/releases/download/v0.1.8/codeclip-linux-arm64.tar.gz"
    sha256 "c69935a202dbdc8712332550624d5acf0543dd072cb0e101abc5e8d22bcd1a58"
  end

  def install
    bin.install "codeclip"
  end

  def caveats
    <<~EOS
      Installing for a coding agent? Complete the integration now:
        codeclip setup --agent codex
      Use --agent claude or --agent cursor for those agents.
      Agents: install the skill as part of this setup, then read the installed
      SKILL.md. Write the user's brief from conversation context and run
      Codeclip for them; do not hand the user CLI commands to operate.
      Setup is offline and preserves unrelated or edited skills. If blocked
      by your environment's permissions, explain the missing setup step.
    EOS
  end

  test do
    assert_match "codeclip #{version}", shell_output("#{bin}/codeclip --version")
    assert_match "generate", shell_output("#{bin}/codeclip --help")
  end
end
