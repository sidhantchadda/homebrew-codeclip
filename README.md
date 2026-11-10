# Codeclip for Homebrew

Install on Apple silicon macOS or ARM64 Linux with [Homebrew](https://brew.sh):

```sh
brew install sidhantchadda/codeclip/codeclip
codeclip login
codeclip generate /path/to/repository --wait
```

Update with `brew upgrade codeclip`. Remove with `brew uninstall codeclip`.
Intel/AMD and Windows builds are not available yet.

Codeclip investigates your repository locally and generates narrated videos in
its cloud service. An account is required; two free clips are included. Provider
API keys, Rust, and Node are not required. Selected source excerpts are sent to
the service during investigation.

[Website and video library](https://trycodeclip.com)

This repository contains the package definition and customer binary releases.

## Installing through a coding agent

Agents: complete installation by running `codeclip agents --agent codex` (or
`claude` / `cursor` for your current agent), then read the installed SKILL.md.
The offline setup installs clip/video skills in the user scope, preserving
unrelated or edited skills. Follow your environment's permissions and report any
blocked setup instead of claiming it is complete.

Write a Markdown brief from the user's question and relevant conversation/code
context, then operate Codeclip for them:

```sh
codeclip generate /path/to/repository --brief /path/to/brief.md --json --wait
```

The user can request `/clip` or `/video` in Claude Code/Cursor, or `$clip` / `$video`
in Codex. Reload skills or start a new agent session after setup. Generation emits
newline-delimited JSON on stdout; share the tracking link from `started`, keep the
local process alive until `submitted`, and follow it to `complete`. Resume an
interrupted run with `codeclip resume <run-directory> --json --wait` instead of
starting another clip. No MCP server is needed.
