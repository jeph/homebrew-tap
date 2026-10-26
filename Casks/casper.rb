cask "casper" do
  version "0.0.29"
  sha256 "c27fcf490f36f453b3f6b33c1a72e6ba42e849ee9512b1fe8fef62a815332c53"

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
