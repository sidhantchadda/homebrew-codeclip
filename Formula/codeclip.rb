class Codeclip < Formula
  desc "Turn code into narrated videos"
  homepage "https://trycodeclip.com"
  version "0.1.13"
  license "MIT"

  depends_on arch: :arm64

  on_macos do
    url "https://github.com/sidhantchadda/homebrew-codeclip/releases/download/v0.1.13/codeclip-macos-arm64.tar.gz"
    sha256 "c16d12078572c1eccf1dd537cfa961898a2b95b41a918b7e1cdb0b2ee2500bf3"
  end

  on_linux do
    url "https://github.com/sidhantchadda/homebrew-codeclip/releases/download/v0.1.13/codeclip-linux-arm64.tar.gz"
    sha256 "c7d563f8b12b731394c3773366945abb9b410b67db15a5dfc86b87d40387607b"
  end

  def install
    bin.install "codeclip"
  end

  def caveats
    <<~EOS
      Agents: check codeclip check-update --json before each run. If an update
      is available, upgrade first, then refresh the skill below.
      Installing for a coding agent? Complete the integration now:
        codeclip agents --agent codex
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
