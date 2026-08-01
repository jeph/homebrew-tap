class Venmo < Formula
  desc "Unofficial Venmo command-line client"
  homepage "https://github.com/jeph/venmo-cli"
  version "0.0.19"
  license "MIT"

  on_macos do
    depends_on macos: :sonoma

    on_arm do
      url "https://github.com/jeph/venmo-cli/releases/download/v#{version}/venmo-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "4ecfddfad6c72be73e086531c0bd9df955a6507dccef03754d5cd113ca8e2549"
    end

    on_intel do
      url "https://github.com/jeph/venmo-cli/releases/download/v#{version}/venmo-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "f3a983d45e82e987199283ab1179e1667681f9ca434d5dc9d44e862f321b13e2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jeph/venmo-cli/releases/download/v#{version}/venmo-v#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "00ba8008819ba411da8911629c2f09500545849a95a9818f8d8edac1f9e1faa4"
    end

    on_intel do
      url "https://github.com/jeph/venmo-cli/releases/download/v#{version}/venmo-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8694ff486a771dcf215d58fe691485ff3b2e28433955aeae436923c23c0c54c6"
    end
  end

  def install
    bin.install "venmo"
  end

  test do
    assert_equal "venmo #{version}", shell_output("#{bin}/venmo --version").strip
  end
end
