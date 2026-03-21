class Sb < Formula
  desc "CLI for skillsbin.com - manage and share Claude skills"
  homepage "https://skillsbin.com"
  version "2026.03.20.1"

  on_macos do
    on_arm do
      url "https://github.com/chronoboost/homebrew-sb-cli/releases/download/v2026.03.20.1/sb_darwin_arm64.tar.gz"
      sha256 "75867ce9ff7a517fbf207ded7df7191cdfbb340a471a5cb5c527b6e325a5601f"
    end
    on_intel do
      url "https://github.com/chronoboost/homebrew-sb-cli/releases/download/v2026.03.20.1/sb_darwin_amd64.tar.gz"
      sha256 "bb1ab418f98926a29aad862ae6aa64bb778a4aa69711f85f7a2fb0b9806a8010"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/chronoboost/homebrew-sb-cli/releases/download/v2026.03.20.1/sb_linux_arm64.tar.gz"
      sha256 "bf91b7ed050749abd6501d21cc2d1100b5c6afee1f54ec2c22ae14ba0c167644"
    end
    on_intel do
      url "https://github.com/chronoboost/homebrew-sb-cli/releases/download/v2026.03.20.1/sb_linux_amd64.tar.gz"
      sha256 "0fb41d5e5f99e3fe92867931eea2b8e717fa5455b51a35cb0d11d5ea4dd07e4e"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    system "#{bin}/sb", "version"
  end
end
