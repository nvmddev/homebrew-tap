# nvmddev/homebrew-tap

Homebrew tap for [Sugarglider](https://github.com/nvmddev/sugarglider) — your
Nightscout blood glucose, always visible in the macOS menu bar.

## Install

```sh
brew install --cask nvmddev/tap/sugarglider
xattr -dr com.apple.quarantine /Applications/Sugarglider.app
```

Sugarglider is ad-hoc signed rather than notarized by Apple, so macOS puts it in
quarantine on first launch — the second line clears that. Homebrew 6 removed the
`--no-quarantine` flag, so there's no way to skip it during install.

## Upgrading

```sh
brew upgrade --cask sugarglider
```

## About this repo

`Casks/sugarglider.rb` is written automatically by the
[cask workflow](https://github.com/nvmddev/sugarglider/blob/main/.github/workflows/cask.yml)
in the main repository — which a release calls, and which can also be run on its
own — from
[this template](https://github.com/nvmddev/sugarglider/blob/main/.github/homebrew/sugarglider.rb.tmpl).
Don't edit it by hand — the next release overwrites it.

Issues and pull requests belong in
[nvmddev/sugarglider](https://github.com/nvmddev/sugarglider/issues), not here.
