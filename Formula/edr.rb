class Edr < Formula
  desc "The editor for agents — context-preserving code navigation and editing"
  homepage "https://github.com/jordw/edr"
  license "MIT"
  version "0.3.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jordw/edr/releases/download/v0.3.0/edr_0.3.0_darwin_arm64.tar.gz"
      sha256 "2fad8cf8569361165743a59da116cf021e26ab8ba0ef3980c9dc18338a80bf69"
    else
      url "https://github.com/jordw/edr/releases/download/v0.3.0/edr_0.3.0_darwin_amd64.tar.gz"
      sha256 "841716ee638ba6c9dce9da95b68404b764cab6e0148c2baa3a9a1961cc3936f0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jordw/edr/releases/download/v0.3.0/edr_0.3.0_linux_arm64.tar.gz"
      sha256 "f09106c5f3d70506a4e726c9f72d60a48c2cbac421ac7b852430bdecd397ae50"
    else
      url "https://github.com/jordw/edr/releases/download/v0.3.0/edr_0.3.0_linux_amd64.tar.gz"
      sha256 "c8f5158ccb90a8bcb8e836a169e5c56c104a302a737acb1f6c1a1598ef02c043"
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
