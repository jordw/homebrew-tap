class Edr < Formula
  desc "The editor for agents — context-preserving code navigation and editing"
  homepage "https://github.com/jordw/edr"
  license "MIT"
  version "0.3.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jordw/edr/releases/download/v0.3.1/edr_0.3.1_darwin_arm64.tar.gz"
      sha256 "191d1b89009c75025792da85779e1e1fd8c298dd95aa647c17c76ef2d0245c61"
    else
      url "https://github.com/jordw/edr/releases/download/v0.3.1/edr_0.3.1_darwin_amd64.tar.gz"
      sha256 "0e288d86361e4478cf02386bfda8bc0cf3b6ae271b82a25a7413cc8aab8f1174"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jordw/edr/releases/download/v0.3.1/edr_0.3.1_linux_arm64.tar.gz"
      sha256 "b069aad3bb0819cb6171a0663c5c3de59428c0f2e3a9399600f2c2f980cfc97f"
    else
      url "https://github.com/jordw/edr/releases/download/v0.3.1/edr_0.3.1_linux_amd64.tar.gz"
      sha256 "80ddb44c00242bee29560df44addf3a222848966174b310148f7a422ba0299fc"
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
