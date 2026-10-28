cask "sheepterm" do
  version "6.0-12"
  sha256 "1415f936d7a5f2dd5fab207788db29e18bb4301966037b0c343d49136c8f99bf"

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
