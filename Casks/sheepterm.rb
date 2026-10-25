cask "sheepterm" do
  version "6.0-2"
  sha256 "1bc050461360f492ec743f70de628db31883fbcb986c6779d879d2dd24769ce0"

  url "https://github.com/bestonehxh/SheepTerm/releases/download/v#{version}/SheepTerm-#{version}.dmg"
  name "SheepTerm"
  desc "SSH, serial and local shell terminal for network engineers"
  homepage "https://sheepterm.com/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+-\d+)$/i)
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "SheepTerm.app"

  zap trash: [
    "~/Library/Application Support/SheepTerm",
    "~/Library/Caches/Bestchaan.SheepTerm",
    "~/Library/HTTPStorages/Bestchaan.SheepTerm",
    "~/Library/Preferences/Bestchaan.SheepTerm.plist",
    "~/Library/Saved Application State/Bestchaan.SheepTerm.savedState",
  ]
end
