# nvmddev/homebrew-tap

Homebrew casks for my macOS apps.

```sh
brew tap nvmddev/tap
```

| App | | |
|---|---|---|
| [Sugarglider](https://github.com/nvmddev/sugarglider) | Nightscout blood glucose in the menu bar | `brew install --cask nvmddev/tap/sugarglider` |
| [LimitPeek](https://github.com/nvmddev/limitpeek) | Claude usage limits in the menu bar | `brew install --cask nvmddev/tap/limitpeek` |

Upgrade with `brew upgrade --cask <name>`.

## Gatekeeper

Sugarglider is ad-hoc signed rather than notarized, so macOS quarantines it on
first launch. Clear the flag after installing:

```sh
xattr -dr com.apple.quarantine /Applications/Sugarglider.app
```

Homebrew 6 removed `--no-quarantine`, so there is no way to skip it during
install. LimitPeek is notarized and needs nothing.

## About this repo

Everything in `Casks/` is written by the release workflow of the app it belongs
to. Don't edit those files by hand — the next release overwrites them.

Issues and pull requests belong in the app's own repository, not here.
