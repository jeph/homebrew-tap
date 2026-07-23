class Venmo < Formula
  desc "Unofficial Venmo command-line client"
  homepage "https://github.com/jeph/venmo-cli"
  version "0.0.10"
  license "MIT"

  on_macos do
    depends_on macos: :sonoma

    on_arm do
      url "https://github.com/jeph/venmo-cli/releases/download/v#{version}/venmo-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "cbe6501920fe3f5e56e75d121ab1224707d08a482c4a3000464c7bcd680bf05d"
    end

    on_intel do
      url "https://github.com/jeph/venmo-cli/releases/download/v#{version}/venmo-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "41e90e08bc254c104c97f88d14fe162df04ba22b7fa4b12d752703c88532377d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jeph/venmo-cli/releases/download/v#{version}/venmo-v#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "dea44de256dfd8330b84b630e71da43bd0c678138ea770735ab960881bf18189"
    end

    on_intel do
      url "https://github.com/jeph/venmo-cli/releases/download/v#{version}/venmo-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b7def212ab246e24aea877377b67797202a2666a3ec8b6a6105c00382dac555c"
    end
  end

  def install
    bin.install "venmo"
  end

  test do
    assert_equal "venmo #{version}", shell_output("#{bin}/venmo --version").strip
  end
end
