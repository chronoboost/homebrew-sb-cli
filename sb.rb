class Sb < Formula
  desc "CLI for skillsbin.com - manage and share Claude skills"
  homepage "https://skillsbin.com"
  version "2026.7.22"

  on_macos do
    on_arm do
      url "https://github.com/chronoboost/homebrew-sb-cli/releases/download/v2026.7.22/sb_darwin_arm64.tar.gz"
      sha256 "3bf0d4b785ebc675187f05c832937a56aedf2b38f54bb7307a9b4fc26cec81ea"
    end
    on_intel do
      url "https://github.com/chronoboost/homebrew-sb-cli/releases/download/v2026.7.22/sb_darwin_amd64.tar.gz"
      sha256 "7e44fa6e1ccf20bb8d7557c942fb25e8d8192fadc8805fea693d8defb61ce5fe"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/chronoboost/homebrew-sb-cli/releases/download/v2026.7.22/sb_linux_arm64.tar.gz"
      sha256 "d90ba9383ce624178cdbfb773ca0005b4f440ed1f0102f8655fc965b683550cc"
    end
    on_intel do
      url "https://github.com/chronoboost/homebrew-sb-cli/releases/download/v2026.7.22/sb_linux_amd64.tar.gz"
      sha256 "632232e789c4a272ea66f00b411a4af8a4134ecc357b354017c74f2be4faaee0"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    system "#{bin}/sb", "version"
  end
end
