cask "cap-console" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin"

  version "1.2.0"
  sha256 arm:          "21e89cf48f05d1c912c3284591d3721e707c57ee9e955e13e5930947f0be3610",
         intel:        "b4f3b325263fbd07ca10219939d58d43dcf4043d612b54630b04854f7ad06113"

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
