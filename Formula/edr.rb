class Edr < Formula
  desc "The editor for agents — context-preserving code navigation and editing"
  homepage "https://github.com/jordw/edr"
  license "MIT"
  version "0.2.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jordw/edr/releases/download/v0.2.4/edr_0.2.4_darwin_arm64.tar.gz"
      sha256 "4c9617bd01b92605050cbfdbba7656a585f593db94408fdf237242a37b769165"
    else
      url "https://github.com/jordw/edr/releases/download/v0.2.4/edr_0.2.4_darwin_amd64.tar.gz"
      sha256 "1bfc3cbf91c6c6bdbef3f7a98e7db76a78e87f38029ef02eb1d4408cf47a8157"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jordw/edr/releases/download/v0.2.4/edr_0.2.4_linux_arm64.tar.gz"
      sha256 "e55f2d7c27c44151d21fa0de2789c243d938b451ac6ecf187867c890399641b3"
    else
      url "https://github.com/jordw/edr/releases/download/v0.2.4/edr_0.2.4_linux_amd64.tar.gz"
      sha256 "8fcff0b27dff2061f6d3538ae0ced3f49e19546f5ca8f89627c5ba5624b78469"
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
