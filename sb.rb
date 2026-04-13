class Sb < Formula
  desc "CLI for skillsbin.com - manage and share Claude skills"
  homepage "https://skillsbin.com"
  version "2026.4.12"

  on_macos do
    on_arm do
      url "https://github.com/chronoboost/homebrew-sb-cli/releases/download/v2026.4.12/sb_darwin_arm64.tar.gz"
      sha256 "ecc4c2fbc4b224d194fd2f930fd4edc17352068e18118625209a3dba0de81651"
    end
    on_intel do
      url "https://github.com/chronoboost/homebrew-sb-cli/releases/download/v2026.4.12/sb_darwin_amd64.tar.gz"
      sha256 "75b41ee2b41c718dd00665d5aaafc4a8eb85c30dfdd552f31d3e592059ea9bca"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/chronoboost/homebrew-sb-cli/releases/download/v2026.4.12/sb_linux_arm64.tar.gz"
      sha256 "1102756e5503fbeb02c263ed22e52465d74a9ca555cf30f7cdee088fcc7281a8"
    end
    on_intel do
      url "https://github.com/chronoboost/homebrew-sb-cli/releases/download/v2026.4.12/sb_linux_amd64.tar.gz"
      sha256 "8f2fe3e0010fcc14d08b2d271dc896a561934b964593aa0a40d899e35628e5df"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    system "#{bin}/sb", "version"
  end
end
