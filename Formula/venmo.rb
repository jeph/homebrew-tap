class Venmo < Formula
  desc "Unofficial Venmo command-line client"
  homepage "https://github.com/jeph/venmo-cli"
  version "0.0.3"
  license "MIT"

  on_macos do
    depends_on macos: :sonoma

    on_arm do
      url "https://github.com/jeph/venmo-cli/releases/download/v#{version}/venmo-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "2e9c5b8c0d8c57e2f054d70fa123c1ef71500e579942c09de99dac26d22bf29b"
    end

    on_intel do
      url "https://github.com/jeph/venmo-cli/releases/download/v#{version}/venmo-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "690fd7e4abe6f41b321fb0617ab83e26c6b96707e80798c5562805176ec6867d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jeph/venmo-cli/releases/download/v#{version}/venmo-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0d1903add968b5865ca601c5fd670a775e59b3d9186d0100faf5f641740ab086"
    end

    on_intel do
      url "https://github.com/jeph/venmo-cli/releases/download/v#{version}/venmo-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "421b9c51ad1b3b5e080a11a2d0ea517fbae4789dc53126f3a3d34b0f0dbab344"
    end
  end

  def install
    bin.install "venmo"
  end

  test do
    assert_equal "venmo #{version}", shell_output("#{bin}/venmo --version").strip
  end
end
