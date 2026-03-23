class Edr < Formula
  desc "The editor for agents — context-preserving code navigation and editing"
  homepage "https://github.com/jordw/edr"
  license "MIT"
  version "0.2.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jordw/edr/releases/download/v0.2.1/edr_0.2.1_darwin_arm64.tar.gz"
      sha256 "37785aad16b3b8fb0aa37515b37ff0005c6dad52bc539c2a3801f9802cf9ad1d"
    else
      url "https://github.com/jordw/edr/releases/download/v0.2.1/edr_0.2.1_darwin_amd64.tar.gz"
      sha256 "6655a5c35ef61d7e095759c00818a02b1b486a44b0382013f390c142fa85525d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jordw/edr/releases/download/v0.2.1/edr_0.2.1_linux_arm64.tar.gz"
      sha256 "b9f8d9b59943c03fd76adb816b8c5cc1fb071ceb3dc4c3d7a2da93138d64940a"
    else
      url "https://github.com/jordw/edr/releases/download/v0.2.1/edr_0.2.1_linux_amd64.tar.gz"
      sha256 "6b6f1d25b4caf232ffdb4b5dae410d3a0ae85d076def3ad6c5710652933d3265"
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
