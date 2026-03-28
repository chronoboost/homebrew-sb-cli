class Sb < Formula
  desc "CLI for skillsbin.com - manage and share Claude skills"
  homepage "https://skillsbin.com"
  version "2026.3.27"

  on_macos do
    on_arm do
      url "https://github.com/chronoboost/homebrew-sb-cli/releases/download/v2026.3.27/sb_darwin_arm64.tar.gz"
      sha256 "0e963b7cac3927186767b9b5b0d5bd004e67897b82028fb302912a13ed505277"
    end
    on_intel do
      url "https://github.com/chronoboost/homebrew-sb-cli/releases/download/v2026.3.27/sb_darwin_amd64.tar.gz"
      sha256 "e421b34bfcba192c549273072e4a33e84e48570d9d8a8bb3fbdfbb7809a9f980"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/chronoboost/homebrew-sb-cli/releases/download/v2026.3.27/sb_linux_arm64.tar.gz"
      sha256 "32a455dfbf63c5398c36afb2f90eded640a80caa57b031e70fab18683380f13a"
    end
    on_intel do
      url "https://github.com/chronoboost/homebrew-sb-cli/releases/download/v2026.3.27/sb_linux_amd64.tar.gz"
      sha256 "814937e7a9a9d7d206375be9c1d2e530c085c6e420197e40a06c5535b69ff341"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    system "#{bin}/sb", "version"
  end
end
