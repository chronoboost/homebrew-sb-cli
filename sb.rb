class Sb < Formula
  desc "CLI for skillsbin.com - manage and share Claude skills"
  homepage "https://skillsbin.com"
  version "2026.3.21"

  on_macos do
    on_arm do
      url "https://github.com/chronoboost/homebrew-sb-cli/releases/download/v2026.3.21/sb_darwin_arm64.tar.gz"
      sha256 "360c0f03182e5207883ca45f416d6f5a6ff130f3ace2351b85df60976a06c6cc"
    end
    on_intel do
      url "https://github.com/chronoboost/homebrew-sb-cli/releases/download/v2026.3.21/sb_darwin_amd64.tar.gz"
      sha256 "a152a09faf977664c0aac6814095508e8bd49260ba4f416b14b304da93745d8f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/chronoboost/homebrew-sb-cli/releases/download/v2026.3.21/sb_linux_arm64.tar.gz"
      sha256 "804e88070c366195aa5f0016ba479ca3ea8d81d840b00f97496660ba25dd7fac"
    end
    on_intel do
      url "https://github.com/chronoboost/homebrew-sb-cli/releases/download/v2026.3.21/sb_linux_amd64.tar.gz"
      sha256 "4a52d4a1387d884b59c7455304b83b6b6ef972f867544b19e6fab8894cf9805d"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    system "#{bin}/sb", "version"
  end
end
