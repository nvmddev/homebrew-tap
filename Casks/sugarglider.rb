# Rendered into <tap>/Casks/sugarglider.rb by .github/workflows/cask.yml.
# Placeholders are substituted with sed — keep them literal.
cask "sugarglider" do
  version "0.2.0"
  sha256 "93b92f95561375a2dfa253d3b6a80e49347e3cb74129d4156ea14e32a3b9d0e5"

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
