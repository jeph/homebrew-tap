class Venmo < Formula
  desc "Unofficial Venmo command-line client"
  homepage "https://github.com/jeph/venmo-cli"
  version "0.0.11"
  license "MIT"

  on_macos do
    depends_on macos: :sonoma

    on_arm do
      url "https://github.com/jeph/venmo-cli/releases/download/v#{version}/venmo-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "5c57c9c4b700ccf39fcee2f82d4537bb9bdcf2114edf8b0dd6aa63f1322d3237"
    end

    on_intel do
      url "https://github.com/jeph/venmo-cli/releases/download/v#{version}/venmo-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "89bcc8c566f1b21fe2e88e40cc2849079ceca755dc47a0b943e5626d1678c47a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jeph/venmo-cli/releases/download/v#{version}/venmo-v#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "38449f0e41fa4a4e19e1bdd950fb756e0815f88b04940c1cb90b099044010dfe"
    end

    on_intel do
      url "https://github.com/jeph/venmo-cli/releases/download/v#{version}/venmo-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "959d1ea05500f92607ffbebe878440a57ca88d13f82ee925cdc3d97bf411a7fa"
    end
  end

  def install
    bin.install "venmo"
  end

  test do
    assert_equal "venmo #{version}", shell_output("#{bin}/venmo --version").strip
  end
end
