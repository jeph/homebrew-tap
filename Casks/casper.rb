cask "casper" do
  version "0.0.31"
  sha256 "52dfee55809dd0573211d46c3b1b5c3f5b0707ab8faf52e5a5672c4282f3a5ff"

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
