class Sb < Formula
  desc "CLI for skillsbin.com - manage and share Claude skills"
  homepage "https://skillsbin.com"
  version "2026.3.20.2"

  on_macos do
    on_arm do
      url "https://github.com/chronoboost/homebrew-sb-cli/releases/download/v2026.3.20.2/sb_darwin_arm64.tar.gz"
      sha256 "df3325d2b77f53f9f81d3ea55ea27fb2706f147c23987c75a450625c98e1c80c"
    end
    on_intel do
      url "https://github.com/chronoboost/homebrew-sb-cli/releases/download/v2026.3.20.2/sb_darwin_amd64.tar.gz"
      sha256 "fdc61639fad75f7b923feaa6ed62155c8fd457d5a6709512b543e6461dd88e22"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/chronoboost/homebrew-sb-cli/releases/download/v2026.3.20.2/sb_linux_arm64.tar.gz"
      sha256 "793723b8b5aad61de74063cf2146f6b1f079e4ded5be2ce892da390771ad0e97"
    end
    on_intel do
      url "https://github.com/chronoboost/homebrew-sb-cli/releases/download/v2026.3.20.2/sb_linux_amd64.tar.gz"
      sha256 "16368ab7f629bd74104ff00eb0f8ca8f7f36ae2eaf665db38758e36214f50917"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    system "#{bin}/sb", "version"
  end
end
