class Cryptocensus < Formula
  desc "SSH and TLS crypto audit with post-quantum readiness scoring"
  homepage "https://github.com/MaqsatKendjebekov/cryptocensus"

  on_macos do
    on_arm do
      url "https://github.com/MaqsatKendjebekov/cryptocensus/releases/download/v1.1.0/cryptocensus-aarch64-apple-darwin.tar.gz"
      sha256 "a4135dc2b6227e668deb13fccfc995cecf449acc7ca39f406dfeaa281f0aaab0"
    end
    on_intel do
      url "https://github.com/MaqsatKendjebekov/cryptocensus/releases/download/v1.1.0/cryptocensus-x86_64-apple-darwin.tar.gz"
      sha256 "8233ad1251cbd8b9d52c39a326248e5efdb34d93884c86d3d347e44e6086be3d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/MaqsatKendjebekov/cryptocensus/releases/download/v1.1.0/cryptocensus-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4563b58e251fd96bd1bb3e1d28fe6eafb89aec3b9be12a8a96782360bfcbbb5c"
    end
    on_intel do
      url "https://github.com/MaqsatKendjebekov/cryptocensus/releases/download/v1.1.0/cryptocensus-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9b79f77a5077e69b1f866f77c427c0dfa9c8ee243d3c513ebc12f330c9ca983e"
    end
  end

  def install
    bin.install "cryptocensus"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cryptocensus --version")
  end
end
