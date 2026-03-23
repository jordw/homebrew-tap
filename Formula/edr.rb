class Edr < Formula
  desc "The editor for agents — context-preserving code navigation and editing"
  homepage "https://github.com/jordw/edr"
  license "MIT"
  version "0.2.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jordw/edr/releases/download/v0.2.2/edr_0.2.2_darwin_arm64.tar.gz"
      sha256 "326dcee269516c29ba5b0af73e930267a5471ae63d963547e1afa81d2f9cd197"
    else
      url "https://github.com/jordw/edr/releases/download/v0.2.2/edr_0.2.2_darwin_amd64.tar.gz"
      sha256 "c766f36b877e93e8733066af7237f1c6e9893f1746c9797ef78e3c5bb694845f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jordw/edr/releases/download/v0.2.2/edr_0.2.2_linux_arm64.tar.gz"
      sha256 "d4597f09e24e17863d7979c411a3da3159477c3f6d33e9b04db0abeca9e89fbe"
    else
      url "https://github.com/jordw/edr/releases/download/v0.2.2/edr_0.2.2_linux_amd64.tar.gz"
      sha256 "1367fbf6c6d88d93ab69d4ea0cb070a1657665c3695ef814854de1463e1334bb"
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
