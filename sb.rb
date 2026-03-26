class Sb < Formula
  desc "CLI for skillsbin.com - manage and share Claude skills"
  homepage "https://skillsbin.com"
  version "2026.3.26"

  on_macos do
    on_arm do
      url "https://github.com/chronoboost/homebrew-sb-cli/releases/download/v2026.3.26/sb_darwin_arm64.tar.gz"
      sha256 "bda45a4090fd695c7882d0240c8fe0e9ab869d8578c9ad19fe621912f6a9c466"
    end
    on_intel do
      url "https://github.com/chronoboost/homebrew-sb-cli/releases/download/v2026.3.26/sb_darwin_amd64.tar.gz"
      sha256 "e176cd6cbcf95d1828e075620e5d4eb207867184c5d3dc46a248c9082844c2e9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/chronoboost/homebrew-sb-cli/releases/download/v2026.3.26/sb_linux_arm64.tar.gz"
      sha256 "5c78d7a4730d205cfcc138bafb4611d67ec12346d312524c0ec709a91749c417"
    end
    on_intel do
      url "https://github.com/chronoboost/homebrew-sb-cli/releases/download/v2026.3.26/sb_linux_amd64.tar.gz"
      sha256 "f5465ca273d04be9d2e14c806a85faa35e54c05ff5c1400859b0e3016f086cbd"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    system "#{bin}/sb", "version"
  end
end
