cask "casper" do
  version "0.0.33"
  sha256 "e156d37a99d49d734d5cfe48dc500e080ed78c338596b2c78fd7d4e21c2623af"

  url "https://github.com/jeph/casper/releases/download/v#{version}/Casper-#{version}.dmg"
  name "Casper"
  desc "Private, on-device dictation"
  homepage "https://github.com/jeph/casper"

  auto_updates true

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Casper.app"

  uninstall quit: "io.jeph.Casper"

  zap trash: [
    "~/Library/Application Support/Casper",
    "~/Library/Caches/io.jeph.Casper",
    "~/Library/Preferences/io.jeph.Casper.plist",
  ]
end
