class Venmo < Formula
  desc "Unofficial Venmo command-line client"
  homepage "https://github.com/jeph/venmo-cli"
  version "0.0.2"
  license "MIT"

  on_macos do
    depends_on macos: :sonoma

    on_arm do
      url "https://github.com/jeph/venmo-cli/releases/download/v#{version}/venmo-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "a3d81e484cc637895d29c6af50cbf58f49f4d5d2ecef85eaa7fa6b61000f0c5d"
    end

    on_intel do
      url "https://github.com/jeph/venmo-cli/releases/download/v#{version}/venmo-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "5f20008991d9f920bcb0b49aeb9dce18f5ffbf36823600be09ffcdc78a16eb21"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jeph/venmo-cli/releases/download/v#{version}/venmo-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0f366417c783d942f242ff7b770ed7eda333f9eff229a50c7164b1b9d4ad748b"
    end

    on_intel do
      url "https://github.com/jeph/venmo-cli/releases/download/v#{version}/venmo-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0f1b885d41f836f1f171614e785d9a4c745bd2e2d48464c2c3d5b48a65fcb6d7"
    end
  end

  def install
    bin.install "venmo"
  end

  test do
    assert_equal "venmo #{version}", shell_output("#{bin}/venmo --version").strip
  end
end
