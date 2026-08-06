# Rendered into <tap>/Casks/sugarglider.rb by .github/workflows/cask.yml.
# Placeholders are substituted with sed — keep them literal.
cask "sugarglider" do
  version "0.4.0"
  sha256 "7836fb0a53a3a3e1b8ca9dd6cfd95b99ccfe8ca4f4d249835ddb200c91aea771"

  url "https://github.com/josi19/sugarglider/releases/download/v#{version}/Sugarglider-#{version}.zip"
  name "Sugarglider"
  desc "Nightscout blood glucose in the macOS menu bar"
  homepage "https://github.com/josi19/sugarglider"

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
