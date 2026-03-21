class Sb < Formula
  desc "CLI for skillsbin.com - manage and share Claude skills"
  homepage "https://skillsbin.com"
  version "2026.3.20.1"

  on_macos do
    on_arm do
      url "https://github.com/chronoboost/homebrew-sb-cli/releases/download/v2026.3.20.1/sb_darwin_arm64.tar.gz"
      sha256 "9ca4a6392b30b077edc09447c1249a0440e32e991fbfac80918abfc6fb501d0d"
    end
    on_intel do
      url "https://github.com/chronoboost/homebrew-sb-cli/releases/download/v2026.3.20.1/sb_darwin_amd64.tar.gz"
      sha256 "71b3f207282cdac994965d55821bb02d775cda160d7485cfdafb419912438332"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/chronoboost/homebrew-sb-cli/releases/download/v2026.3.20.1/sb_linux_arm64.tar.gz"
      sha256 "db2b5592fa0a9758e8b1415885d8c594729a003d713ff430b88aacada623eb3d"
    end
    on_intel do
      url "https://github.com/chronoboost/homebrew-sb-cli/releases/download/v2026.3.20.1/sb_linux_amd64.tar.gz"
      sha256 "afef0e0959d1c709d9cce583b7202a51a6d2f1007fd4f0561973aa509c0bbac8"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    system "#{bin}/sb", "version"
  end
end
