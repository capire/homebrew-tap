cask "cap-console" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin"

  version "1.2.1"
  sha256 arm:          "0009f43082c9c243ed80fec0cf41c8bd8442a817d36e58265888821eb4644c1a",
         intel:        "373b232c5ed500d81e7b6277528b212355056e7777234113fc55abba4c3dae90"

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
