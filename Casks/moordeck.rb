cask "moordeck" do
  version "0.2.9"
  sha256 "cd6846c861adc0d241bc8a6ef3a740ab7c95d0a33bc1548d95f2c143f3c8e6e4"

  url "https://dl.moordeck.com/client/v#{version}/Moordeck_#{version}_macos-arm64.dmg"
  name "Moordeck"
  desc "Local-first anti-detect fingerprint browser and standard Local API engine"
  homepage "https://moordeck.com/"

  livecheck do
    url "https://moordeck.com/api/v1/releases/client/latest.json?channel=stable"
    strategy :json do |json|
      json["version"]
    end
  end

  depends_on macos: ">= :ventura"
  depends_on arch: :arm64

  app "Moordeck.app"

  zap trash: [
    "~/Library/Application Support/Moordeck",
    "~/Library/Caches/com.moordeck.desktop",
    "~/Library/Preferences/com.moordeck.desktop.plist",
    "~/Library/Saved Application State/com.moordeck.desktop.savedState",
  ]
end
