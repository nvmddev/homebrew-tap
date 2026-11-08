# Rendered into <tap>/Casks/sugarglider.rb by .github/workflows/cask.yml.
# Placeholders are substituted with sed; keep them literal.
cask "sugarglider" do
  version "1.0.0"
  sha256 "10f3327e93b246191855a2f3f94d89e586285b8fdf228a4528f37e51a1e47875"

  url "https://github.com/nvmddev/sugarglider/releases/download/v#{version}/Sugarglider-#{version}.zip"
  name "Sugarglider"
  desc "Nightscout blood glucose in the macOS menu bar"
  homepage "https://github.com/nvmddev/sugarglider"

  # A bare symbol means "this version or newer".
  depends_on macos: :tahoe
  depends_on arch: :arm64

  app "Sugarglider.app"

  uninstall quit: "dev.nevermind.sugarglider"

  zap trash: [
    # The app is sandboxed, so everything it writes lives in the container. The
    # bare paths cover installs from before the sandbox.
    "~/Library/Containers/dev.nevermind.sugarglider",
    "~/Library/Preferences/dev.nevermind.sugarglider.plist",
    "~/Library/Caches/dev.nevermind.sugarglider",
    "~/Library/HTTPStorages/dev.nevermind.sugarglider",
  ]
end
