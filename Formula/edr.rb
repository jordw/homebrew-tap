class Edr < Formula
  desc "The editor for agents — context-preserving code navigation and editing"
  homepage "https://github.com/jordw/edr"
  license "MIT"
  version "0.9.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jordw/edr/releases/download/v0.9.0/edr_0.9.0_darwin_arm64.tar.gz"
      sha256 "8759311b3791ee5e96dddc50ee55dcc61a1e89ed549260d0916e0df17716e64a"
    else
      url "https://github.com/jordw/edr/releases/download/v0.9.0/edr_0.9.0_darwin_amd64.tar.gz"
      sha256 "b1c449ee118a426c1cc12dc22b9f8ff9d410a619a9e056cee941d436b4f79796"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jordw/edr/releases/download/v0.9.0/edr_0.9.0_linux_arm64.tar.gz"
      sha256 "3db6e6c3a25361117d76722289d463ce89f12ed7d76a8298ab197c0061a3756a"
    else
      url "https://github.com/jordw/edr/releases/download/v0.9.0/edr_0.9.0_linux_amd64.tar.gz"
      sha256 "23d5a9410689aff34e83613c31c9251e793d0bf51e703ab3b002fb1f393c0285"
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
