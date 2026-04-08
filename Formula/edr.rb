class Edr < Formula
  desc "The editor for agents — context-preserving code navigation and editing"
  homepage "https://github.com/jordw/edr"
  license "MIT"
  version "0.3.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jordw/edr/releases/download/v0.3.5/edr_0.3.5_darwin_arm64.tar.gz"
      sha256 "93c29bc3d4465024a7c78cba37b8403ed063354a711fd3a2f389c278ade4a41e"
    else
      url "https://github.com/jordw/edr/releases/download/v0.3.5/edr_0.3.5_darwin_amd64.tar.gz"
      sha256 "8a109f9a69caafe4e5208da3ecb417398560ffaa7bfc5fc017b7f6ca42335951"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jordw/edr/releases/download/v0.3.5/edr_0.3.5_linux_arm64.tar.gz"
      sha256 "11eeed31af7c533021681d82b805a36a132a0bd8c669de0b070319a38d74b548"
    else
      url "https://github.com/jordw/edr/releases/download/v0.3.5/edr_0.3.5_linux_amd64.tar.gz"
      sha256 "482e55c29f0a6f750d957ca080a238afc3bb9f5024982f51053abe97bc41acb3"
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
