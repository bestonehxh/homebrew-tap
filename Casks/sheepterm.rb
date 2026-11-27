cask "sheepterm" do
  version "6.2-9"
  sha256 "ea1e2a187d2c2aacbcdc2def6b32502af33b886e9edd6bcb4a32099dda008e59"

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
