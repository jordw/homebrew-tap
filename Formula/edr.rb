class Edr < Formula
  desc "The editor for agents — context-preserving code navigation and editing"
  homepage "https://github.com/jordw/edr"
  license "MIT"
  version "0.3.7"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jordw/edr/releases/download/v0.3.7/edr_0.3.7_darwin_arm64.tar.gz"
      sha256 "8f714bda3ceea73c5dca2d4634b46acc138af091c2eed0ff172a13ad0da0b0bf"
    else
      url "https://github.com/jordw/edr/releases/download/v0.3.7/edr_0.3.7_darwin_amd64.tar.gz"
      sha256 "78d4e97fa45a9d7e071b79a112c7f1f0ea70ecfb24188848a5e86c0c08a9aa4c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jordw/edr/releases/download/v0.3.7/edr_0.3.7_linux_arm64.tar.gz"
      sha256 "f2c3693323c757687a5c5d36516f74b9d1492660e73b68924d5a33c70ca20339"
    else
      url "https://github.com/jordw/edr/releases/download/v0.3.7/edr_0.3.7_linux_amd64.tar.gz"
      sha256 "a2ff54584ebff9bbe85b4e0152526c390f58d06d4ed7e2050dc27afbcd0e7241"
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
