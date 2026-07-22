class Venmo < Formula
  desc "Unofficial Venmo command-line client"
  homepage "https://github.com/jeph/venmo-cli"
  version "0.0.6"
  license "MIT"

  on_macos do
    depends_on macos: :sonoma

    on_arm do
      url "https://github.com/jeph/venmo-cli/releases/download/v#{version}/venmo-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "2312f81767440154a76a84f7e256bb5cbf640d38b8aadbd013e6c42e28992759"
    end

    on_intel do
      url "https://github.com/jeph/venmo-cli/releases/download/v#{version}/venmo-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "fe2ed5c4758d57316f2b5b3bdf84b3106192a596cebee20dc5e097fac6468b26"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jeph/venmo-cli/releases/download/v#{version}/venmo-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5fb0765ec209a3410f061a7d037c05e8c332ddff9b9c8dd04b30b1a602b7bedd"
    end

    on_intel do
      url "https://github.com/jeph/venmo-cli/releases/download/v#{version}/venmo-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e3e681e221b7d33723b5c8dc8f285c79ca96299a2db6510698d0433915a8b2dc"
    end
  end

  def install
    bin.install "venmo"
  end

  test do
    assert_equal "venmo #{version}", shell_output("#{bin}/venmo --version").strip
  end
end
