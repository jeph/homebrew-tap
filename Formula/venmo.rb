class Venmo < Formula
  desc "Unofficial Venmo command-line client"
  homepage "https://github.com/jeph/venmo-cli"
  version "0.0.8"
  license "MIT"

  on_macos do
    depends_on macos: :sonoma

    on_arm do
      url "https://github.com/jeph/venmo-cli/releases/download/v#{version}/venmo-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "850cd694bb2d659a982ec026aab4f837837acc5d325eb2c193de5cc9c9b184ba"
    end

    on_intel do
      url "https://github.com/jeph/venmo-cli/releases/download/v#{version}/venmo-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "6cc1c82def932846172761a4b7519abdd98e271466fabde76a39e331363f3157"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jeph/venmo-cli/releases/download/v#{version}/venmo-v#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e63e759fe5afcfa68fa575268c73298488dfe8212fa980c663e7bdafac6d52d9"
    end

    on_intel do
      url "https://github.com/jeph/venmo-cli/releases/download/v#{version}/venmo-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5f5a8c993ed4868e17f004ee44f1d67c58d968a5404cd628f61b6e4f06e693f9"
    end
  end

  def install
    bin.install "venmo"
  end

  test do
    assert_equal "venmo #{version}", shell_output("#{bin}/venmo --version").strip
  end
end
