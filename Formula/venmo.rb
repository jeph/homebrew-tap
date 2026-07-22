class Venmo < Formula
  desc "Unofficial Venmo command-line client"
  homepage "https://github.com/jeph/venmo-cli"
  version "0.0.5"
  license "MIT"

  on_macos do
    depends_on macos: :sonoma

    on_arm do
      url "https://github.com/jeph/venmo-cli/releases/download/v#{version}/venmo-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "02cd34fa7fefa124f9d704ff297da725eb8dc158a720e0b6ec904b46cfe00e18"
    end

    on_intel do
      url "https://github.com/jeph/venmo-cli/releases/download/v#{version}/venmo-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "d848ae1b5874d8898a8ce3de772a4d49886ae9229eee94f2bb7883a4301a65b4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jeph/venmo-cli/releases/download/v#{version}/venmo-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "759940db897be4b9d02827da3533037e380cdc7ddd102492de9abdd40830601c"
    end

    on_intel do
      url "https://github.com/jeph/venmo-cli/releases/download/v#{version}/venmo-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9620b1124e7f349d83b8d70bdf2d7edd23e4e7cb1b526e98af11cccdd6121e60"
    end
  end

  def install
    bin.install "venmo"
  end

  test do
    assert_equal "venmo #{version}", shell_output("#{bin}/venmo --version").strip
  end
end
