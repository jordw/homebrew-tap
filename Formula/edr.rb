class Edr < Formula
  desc "The editor for agents — context-preserving code navigation and editing"
  homepage "https://github.com/jordw/edr"
  license "MIT"
  version "0.2.0-beta2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jordw/edr/releases/download/v0.2.0-beta2/edr_0.2.0-beta2_darwin_arm64.tar.gz"
      sha256 "53a81c27f41e016cf078299ff25d76b0b2b79e8160c4b401a3690f437f3160f4"
    else
      url "https://github.com/jordw/edr/releases/download/v0.2.0-beta2/edr_0.2.0-beta2_darwin_amd64.tar.gz"
      sha256 "5143985ff4796f4f5a3ed09863122f67958918603a20bcdcbf6ab9d5f63fcc76"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jordw/edr/releases/download/v0.2.0-beta2/edr_0.2.0-beta2_linux_arm64.tar.gz"
      sha256 "c5fdba9f233d3dfa5bff95d14fe0d44fe295fd1d3540f92d07c1154bc0c562b6"
    else
      url "https://github.com/jordw/edr/releases/download/v0.2.0-beta2/edr_0.2.0-beta2_linux_amd64.tar.gz"
      sha256 "6a4966247769a31a946025b235d4025669f1f215d90f1ee198b949ab6a17cb42"
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
