class Sb < Formula
  desc "CLI for skillsbin.com - manage and share Claude skills"
  homepage "https://skillsbin.com"
  version "2026.3.21.1"

  on_macos do
    on_arm do
      url "https://github.com/chronoboost/homebrew-sb-cli/releases/download/v2026.3.21.1/sb_darwin_arm64.tar.gz"
      sha256 "0e5febd5bb8f1c8de66fb772c0191612efe4c65c62b1ded5a904cccde2438f0b"
    end
    on_intel do
      url "https://github.com/chronoboost/homebrew-sb-cli/releases/download/v2026.3.21.1/sb_darwin_amd64.tar.gz"
      sha256 "ea5048908bf4dcaab6f17eab0fcb42dd4b85bf99fd313a6b7ca19bd402b25c6b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/chronoboost/homebrew-sb-cli/releases/download/v2026.3.21.1/sb_linux_arm64.tar.gz"
      sha256 "462edaa9a1440aff13f0d42bb7df1cd26e0fd93dfdd2f1dc08ab064e3e8bcb93"
    end
    on_intel do
      url "https://github.com/chronoboost/homebrew-sb-cli/releases/download/v2026.3.21.1/sb_linux_amd64.tar.gz"
      sha256 "a2713faea576408bdc3fa307369796f2639bce7d318685ba84f9a96f9c212c63"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    system "#{bin}/sb", "version"
  end
end
