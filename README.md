# josi19/homebrew-tap

Homebrew tap for [Sugarglider](https://github.com/josi19/sugarglider) — your
Nightscout blood glucose, always visible in the macOS menu bar.

## Install

```sh
brew install --cask josi19/tap/sugarglider
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
[release workflow](https://github.com/josi19/sugarglider/blob/main/.github/workflows/release.yml)
in the main repository, from
[this template](https://github.com/josi19/sugarglider/blob/main/.github/homebrew/sugarglider.rb.tmpl).
Don't edit it by hand — the next release overwrites it.

Issues and pull requests belong in
[josi19/sugarglider](https://github.com/josi19/sugarglider/issues), not here.
