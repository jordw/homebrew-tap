class Edr < Formula
  desc "The editor for agents — context-preserving code navigation and editing"
  homepage "https://github.com/jordw/edr"
  license "MIT"
  version "0.3.7"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jordw/edr/releases/download/v0.3.7/edr_0.3.7_darwin_arm64.tar.gz"
      sha256 "d6dd7e586a6d28d0200eb52dac2128be904f17233844676f3c1b8faf9d6500a9"
    else
      url "https://github.com/jordw/edr/releases/download/v0.3.7/edr_0.3.7_darwin_amd64.tar.gz"
      sha256 "bbe0a8578709755136959b3368ae61569df860c825b5b267e1aa4d085f136d42"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jordw/edr/releases/download/v0.3.7/edr_0.3.7_linux_arm64.tar.gz"
      sha256 "9865180131a554a243e1c34eb2ac106fde871e269c67b4d481f9d4096586276e"
    else
      url "https://github.com/jordw/edr/releases/download/v0.3.7/edr_0.3.7_linux_amd64.tar.gz"
      sha256 "4fab8657ae4d9a0d5a4dc72bb869d5dbac40d8b550459bf4ad8c2fe2bca205a5"
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
