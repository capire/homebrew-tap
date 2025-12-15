cask "cap-console" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin"

  version "1.2.2"
  sha256 arm:          "50988d97688c4affef784c103d308c12387a7f24fafd36c10810b5f46c495cbd",
         intel:        "5466365c79e576f7b0744dcc6e0a8191f3189f3c5924ea6fd1d5209d6e98d206"

  url "https://cap-console-updater.cfapps.eu10-005.hana.ondemand.com/#{arch}-cap-console.dmg",
    verified: "cap-console-updater.cfapps.eu10-005.hana.ondemand.com"
  name "CAP Console"
  desc "Your friendly helper tool for CAP development."
  homepage "https://cap.cloud.sap/docs/tools/console"

  livecheck do
    url "https://cap-console-updater.cfapps.eu10-005.hana.ondemand.com/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true

  app "CAP Console.app"

  zap trash: [
    "~/Library/Application Support/CAP Console",
    "~/Library/Caches/capconsole-updater",
    "~/Library/Logs/CAP Console",
  ]

  caveats do
    license "https://tools.hana.ondemand.com/developer-license-3_1.txt"
  end
end
