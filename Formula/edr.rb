class Edr < Formula
  desc "The editor for agents — context-preserving code navigation and editing"
  homepage "https://github.com/jordw/edr"
  license "MIT"
  version "0.2.6"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jordw/edr/releases/download/v0.2.6/edr_0.2.6_darwin_arm64.tar.gz"
      sha256 "a35cd4dadc1556af0077afd1d3ec39da6ac34115fa3300908640074648a2dca9"
    else
      url "https://github.com/jordw/edr/releases/download/v0.2.6/edr_0.2.6_darwin_amd64.tar.gz"
      sha256 "4f30a612edfbd756baf62f3d5625325ddaab3fa47a708dc015da10ecb76f4a02"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jordw/edr/releases/download/v0.2.6/edr_0.2.6_linux_arm64.tar.gz"
      sha256 "bac92009396d0a1a8a85ce43f4bc42c838d7287215a0797da29f3af6821ec4c9"
    else
      url "https://github.com/jordw/edr/releases/download/v0.2.6/edr_0.2.6_linux_amd64.tar.gz"
      sha256 "cd85d83cc9c73084020e2a7a0f6c50fabb0b3122b7f6f694b20df28138e668b2"
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
