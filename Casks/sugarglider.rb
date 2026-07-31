# Rendered into <tap>/Casks/sugarglider.rb by .github/workflows/release.yml.
# Placeholders are substituted with sed — keep them literal.
cask "sugarglider" do
  version "0.1.0"
  sha256 "876154949ea1d8669986f8cf6b1b2dda750fdb0c3729779d6f42585c781f729d"

  url "https://github.com/josi19/sugarglider/releases/download/v#{version}/Sugarglider-#{version}.zip"
  name "Sugarglider"
  desc "Nightscout blood glucose in the macOS menu bar"
  homepage "https://github.com/josi19/sugarglider"

  # @Observable / the Observation framework put the floor at macOS 14.
  depends_on macos: ">= :sonoma"

  app "Sugarglider.app"

  uninstall quit: "dev.nevermind.sugarglider"

  zap trash: [
    "~/Library/Preferences/dev.nevermind.sugarglider.plist",
    "~/Library/Caches/dev.nevermind.sugarglider",
    "~/Library/HTTPStorages/dev.nevermind.sugarglider",
  ]
end
