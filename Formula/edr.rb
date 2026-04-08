class Edr < Formula
  desc "The editor for agents — context-preserving code navigation and editing"
  homepage "https://github.com/jordw/edr"
  license "MIT"
  version "0.3.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jordw/edr/releases/download/v0.3.4/edr_0.3.4_darwin_arm64.tar.gz"
      sha256 "c8b1c9d7abec01dcaab89bc47307d4fccded1b144e2845b52cbf0dd0dc413738"
    else
      url "https://github.com/jordw/edr/releases/download/v0.3.4/edr_0.3.4_darwin_amd64.tar.gz"
      sha256 "669c3026deb8bfb681d2330a5c2d85bee3605c31ac23581c245187fd3a7987e2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jordw/edr/releases/download/v0.3.4/edr_0.3.4_linux_arm64.tar.gz"
      sha256 "a4b2ce143e57741a07459edc2979df30fdcf8dd86046b5872370469b1df63ab6"
    else
      url "https://github.com/jordw/edr/releases/download/v0.3.4/edr_0.3.4_linux_amd64.tar.gz"
      sha256 "6f2f46fffc9694f8247b27576c5fb8915e7c5f6f97982ee730a41824b489b979"
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
