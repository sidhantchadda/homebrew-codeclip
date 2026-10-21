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
its cloud service. An account is required; five free runs are included. Provider
API keys, Rust, and Node are not required. Selected source excerpts are sent to
the service during investigation.

[Website and video library](https://dq79lczicpi4v.cloudfront.net)

This repository contains the package definition and customer binary releases.
