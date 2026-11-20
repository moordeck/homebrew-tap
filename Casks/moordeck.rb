cask "moordeck" do
  version "0.1.8"
  sha256 "9850bc14a9b6fbbf548f3b550c3ed56fdd645842ed84c327166de942b0768945"

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
