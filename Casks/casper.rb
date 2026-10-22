cask "casper" do
  version "0.0.27"
  sha256 "9fa1d31997a8915667136eb96c8850ab8560f578ceb5cfb33e119a50096c1522"

  url "https://github.com/jeph/casper/releases/download/v#{version}/Casper-#{version}.dmg"
  name "Casper"
  desc "Private, on-device dictation"
  homepage "https://github.com/jeph/casper"

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
