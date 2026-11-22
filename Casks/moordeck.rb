cask "moordeck" do
  version "0.2.6"
  sha256 "27968f4a387f8b72ef6ef8ce708b44e8a16c3e5a38b5b6864b27c791b2dac218"

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
