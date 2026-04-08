class Edr < Formula
  desc "The editor for agents — context-preserving code navigation and editing"
  homepage "https://github.com/jordw/edr"
  license "MIT"
  version "0.3.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jordw/edr/releases/download/v0.3.3/edr_0.3.3_darwin_arm64.tar.gz"
      sha256 "13484306490914831ed39da1ec88eca51438dda7613f9cbe35d276f3e1fc501e"
    else
      url "https://github.com/jordw/edr/releases/download/v0.3.3/edr_0.3.3_darwin_amd64.tar.gz"
      sha256 "d10db9db74760660e0d3ab6b5ec89e8ebad3717cd02e6bbc00d22e9543591902"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jordw/edr/releases/download/v0.3.3/edr_0.3.3_linux_arm64.tar.gz"
      sha256 "3833f4e492f91075848a862e16143f26f9a1e49f8c60d0fcd6efd87eeab1852f"
    else
      url "https://github.com/jordw/edr/releases/download/v0.3.3/edr_0.3.3_linux_amd64.tar.gz"
      sha256 "1245b9c5a993fd86f93e2e85417d3a80ebae08a51be9cfd8e1770852d8d25d7b"
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
