class Edr < Formula
  desc "The editor for agents — context-preserving code navigation and editing"
  homepage "https://github.com/jordw/edr"
  license "MIT"
  version "0.2.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jordw/edr/releases/download/v0.2.3/edr_0.2.3_darwin_arm64.tar.gz"
      sha256 "08642a99ed43465faf1c444320efef115ad9bd25d9b5b74d6390e6a0a181e5aa"
    else
      url "https://github.com/jordw/edr/releases/download/v0.2.3/edr_0.2.3_darwin_amd64.tar.gz"
      sha256 "00405d63faa57f7565948469c905d37af51b9ed26d7853f8e11045e09019ccd5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jordw/edr/releases/download/v0.2.3/edr_0.2.3_linux_arm64.tar.gz"
      sha256 "dae38750d41749d7246322060825a97ebe4c8bb3c37cb1103820bad3b5473e24"
    else
      url "https://github.com/jordw/edr/releases/download/v0.2.3/edr_0.2.3_linux_amd64.tar.gz"
      sha256 "3b053aefc3388cf0a47609acdf01561ff29ff888669196b90f290e4bcaa6013b"
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
