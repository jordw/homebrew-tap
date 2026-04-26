class Edr < Formula
  desc "The editor for agents — context-preserving code navigation and editing"
  homepage "https://github.com/jordw/edr"
  license "MIT"
  version "0.4.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jordw/edr/releases/download/v0.4.0/edr_0.4.0_darwin_arm64.tar.gz"
      sha256 "5419066638cf11169a537a74c28d8ed62f274fa5491f1f67d324e37683fd53ee"
    else
      url "https://github.com/jordw/edr/releases/download/v0.4.0/edr_0.4.0_darwin_amd64.tar.gz"
      sha256 "cacece4916b5e614449527918cb4bdb0a25e12cfb6d9601d5f2ff9efe64e8725"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jordw/edr/releases/download/v0.4.0/edr_0.4.0_linux_arm64.tar.gz"
      sha256 "2edd1d3807543d607b2f9512e1ffd56035bdc7ef2832a9c6ef459cd4c1c6f686"
    else
      url "https://github.com/jordw/edr/releases/download/v0.4.0/edr_0.4.0_linux_amd64.tar.gz"
      sha256 "a3285d2c2b3d095e3949bf67afca7f6695aee6ba0822578671aadd1b93e4172d"
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
