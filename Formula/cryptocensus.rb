class Cryptocensus < Formula
  desc "SSH and TLS crypto audit with post-quantum readiness scoring"
  homepage "https://github.com/cryptocensus/cryptocensus"

  on_macos do
    on_arm do
      url "https://github.com/cryptocensus/cryptocensus/releases/download/v1.1.1/cryptocensus-aarch64-apple-darwin.tar.gz"
      sha256 "fa27818ae357d14b52582bb63cc277d48270a6e59494c3fb2bf6967d13fd7d7f"
    end
    on_intel do
      url "https://github.com/cryptocensus/cryptocensus/releases/download/v1.1.1/cryptocensus-x86_64-apple-darwin.tar.gz"
      sha256 "56cfdbc04483fdc7c799f7ae62d42fbf9ff44124c30e85666af5cd6608923a22"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cryptocensus/cryptocensus/releases/download/v1.1.1/cryptocensus-aarch64-unknown-linux-musl.tar.gz"
      sha256 "bb9acd212884f8f971faaf95fd2eabb2ef49f6ec7034ebb5c450c2fce3da1d6a"
    end
    on_intel do
      url "https://github.com/cryptocensus/cryptocensus/releases/download/v1.1.1/cryptocensus-x86_64-unknown-linux-musl.tar.gz"
      sha256 "759dedb4f78c45ec572b431b4552779d568bfa904bece5456d76deef2fd60e65"
    end
  end

  def install
    bin.install "cryptocensus"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cryptocensus --version")
  end
end
