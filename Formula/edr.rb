class Edr < Formula
  desc "The editor for agents — context-preserving code navigation and editing"
  homepage "https://github.com/jordw/edr"
  license "MIT"
  version "0.3.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jordw/edr/releases/download/v0.3.1/edr_0.3.1_darwin_arm64.tar.gz"
      sha256 "35902447f5060c3ef47952a9b4a9b1644048f6a7e3c1d82a1fb6b86023931fe5"
    else
      url "https://github.com/jordw/edr/releases/download/v0.3.1/edr_0.3.1_darwin_amd64.tar.gz"
      sha256 "dde94817f30e701384023b780da15f33daaf84bab0cf5d84bf3147af218759e8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jordw/edr/releases/download/v0.3.1/edr_0.3.1_linux_arm64.tar.gz"
      sha256 "1085dd932b674e340b80335194ff6c00947b3a8d7d48a92c5d98e9af8c54ca0a"
    else
      url "https://github.com/jordw/edr/releases/download/v0.3.1/edr_0.3.1_linux_amd64.tar.gz"
      sha256 "aea430677f03831707776f9845e78b5522e0cf2f3eee2d47f335522609b7fd8e"
    end
  end

  def install
    bin.install "edr"
  end

  def caveats
    <<~EOS
      Run edr setup in your project to index it and install agent instructions:
        cd /path/to/your/project
        edr setup
    EOS
  end

  test do
    system "#{bin}/edr", "--version"
  end
end
