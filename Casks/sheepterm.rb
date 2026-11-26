cask "sheepterm" do
  version "6.2-8"
  sha256 "a31dac0d08c311d53f0bd530126a51934fae5e692bf7a73b42f7cd17320732ed"

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
