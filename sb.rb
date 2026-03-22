class Sb < Formula
  desc "CLI for skillsbin.com - manage and share Claude skills"
  homepage "https://skillsbin.com"
  version "2026.3.22"

  on_macos do
    on_arm do
      url "https://github.com/chronoboost/homebrew-sb-cli/releases/download/v2026.3.22/sb_darwin_arm64.tar.gz"
      sha256 "52e3aacaab5ecdea6abe51f5a6e11ab7a1e27e29a2af0af8f09cb74b86187c8b"
    end
    on_intel do
      url "https://github.com/chronoboost/homebrew-sb-cli/releases/download/v2026.3.22/sb_darwin_amd64.tar.gz"
      sha256 "74c614fbfdcb9274b62221ab913cc0db4c03ea7914bc92fd18400d02492d1459"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/chronoboost/homebrew-sb-cli/releases/download/v2026.3.22/sb_linux_arm64.tar.gz"
      sha256 "3c6526ecc4e1a430dcbc4cd676c49c0578bd4e791576fd87ec7111beac89d6a1"
    end
    on_intel do
      url "https://github.com/chronoboost/homebrew-sb-cli/releases/download/v2026.3.22/sb_linux_amd64.tar.gz"
      sha256 "3c2385c7e57aada4ae7105e968e0912147d5e476781199cfdd7477e2d5e26c63"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    system "#{bin}/sb", "version"
  end
end
