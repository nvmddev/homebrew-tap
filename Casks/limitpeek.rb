# Rendered into <tap>/Casks/limitpeek.rb by .github/workflows/cask.yml.
# Placeholders are substituted with sed — keep them literal.
cask "limitpeek" do
  version "0.3.0"
  sha256 "005ad0f5a3ed345fca9e0cbf491cd8703406afdfcdc4d0be7286b8d945c19f70"

  url "https://github.com/nvmddev/limitpeek/releases/download/v#{version}/LimitPeek-#{version}.zip"
  name "LimitPeek"
  desc "Claude usage limits in the macOS menu bar"
  homepage "https://github.com/nvmddev/limitpeek"

  # MenuBarExtra and @Observable put the floor at macOS 14. A bare symbol
  # already means "this version or newer"; the ">= :sonoma" form is deprecated.
  depends_on macos: :sonoma
  # Apple-silicon-only release: the app is built for arm64.
  depends_on arch: :arm64

  app "LimitPeek.app"

  uninstall quit: "dev.nevermind.LimitPeek"

  # The OAuth token lives in the Keychain, which zap cannot reach. Sign out in
  # the app before uninstalling to remove it.
  zap trash: [
    "~/Library/Preferences/dev.nevermind.LimitPeek.plist",
    "~/Library/Caches/dev.nevermind.LimitPeek",
    "~/Library/HTTPStorages/dev.nevermind.LimitPeek",
  ]
end
