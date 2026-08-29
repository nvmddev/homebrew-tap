# Rendered into <tap>/Casks/sugarglider.rb by .github/workflows/cask.yml.
# Placeholders are substituted with sed — keep them literal.
cask "sugarglider" do
  version "0.5.0"
  sha256 "46549a8bbb58edb91a74e4e218997bf7fd960620b55e5c5353f6e7367299ab2a"

  url "https://github.com/nvmddev/sugarglider/releases/download/v#{version}/Sugarglider-#{version}.zip"
  name "Sugarglider"
  desc "Nightscout blood glucose in the macOS menu bar"
  homepage "https://github.com/nvmddev/sugarglider"

  # @Observable / the Observation framework put the floor at macOS 14.
  # A bare symbol already means "this version or newer"; the ">= :sonoma"
  # string form is deprecated in Homebrew.
  depends_on macos: :sonoma

  app "Sugarglider.app"

  uninstall quit: "dev.nevermind.sugarglider"

  zap trash: [
    "~/Library/Preferences/dev.nevermind.sugarglider.plist",
    "~/Library/Caches/dev.nevermind.sugarglider",
    "~/Library/HTTPStorages/dev.nevermind.sugarglider",
  ]
end
