cask "sheepterm" do
  version "6.1-13"
  sha256 "3379064ad83ab4cc3660e69c6d29a883df5e412cd2e9f10b7fa26da40b2e1a77"

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
