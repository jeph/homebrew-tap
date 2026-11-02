cask "casper" do
  version "0.0.32"
  sha256 "875a0c9596aa480d52f4be68639e4f84c9e01d0ec6691a9b02f6d5b514aa66f5"

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
