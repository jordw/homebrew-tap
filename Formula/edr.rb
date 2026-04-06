class Edr < Formula
  desc "The editor for agents — context-preserving code navigation and editing"
  homepage "https://github.com/jordw/edr"
  license "MIT"
  version "0.3.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jordw/edr/releases/download/v0.3.2/edr_0.3.2_darwin_arm64.tar.gz"
      sha256 "ab05e3fff78243a8a49077651cad1aa68d6cb35b5f37b8d411b3f53d366296d1"
    else
      url "https://github.com/jordw/edr/releases/download/v0.3.2/edr_0.3.2_darwin_amd64.tar.gz"
      sha256 "3860a76705386d4866faa1883d8e4283250615b58a07ef893242730a22300487"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jordw/edr/releases/download/v0.3.2/edr_0.3.2_linux_arm64.tar.gz"
      sha256 "3b8e9ce73c42759c0ef960b534693f5e44289bd38ba5ff21680ebdd9f3ce0184"
    else
      url "https://github.com/jordw/edr/releases/download/v0.3.2/edr_0.3.2_linux_amd64.tar.gz"
      sha256 "b1da0f477e24cc2c9f1f1d304511c870728ac575e4a085ed6dc46c644b3549d6"
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
