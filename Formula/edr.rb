class Edr < Formula
  desc "The editor for agents — context-preserving code navigation and editing"
  homepage "https://github.com/jordw/edr"
  license "MIT"
  version "0.2.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jordw/edr/releases/download/v0.2.5/edr_0.2.5_darwin_arm64.tar.gz"
      sha256 "1368a17f9404aab02afee050417ac96f97bb41ff5f3dd683487b86087d79ccf5"
    else
      url "https://github.com/jordw/edr/releases/download/v0.2.5/edr_0.2.5_darwin_amd64.tar.gz"
      sha256 "ce3258addb7a712ee0443274a1c0eea691e88b3aa403579567a10dca64e1bac1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jordw/edr/releases/download/v0.2.5/edr_0.2.5_linux_arm64.tar.gz"
      sha256 "9b19f71a9b920b25dd451316070bea3c9295744d05fe0647ce99a71bd3783c6e"
    else
      url "https://github.com/jordw/edr/releases/download/v0.2.5/edr_0.2.5_linux_amd64.tar.gz"
      sha256 "a7e02e4d016ba8b074fbae3efa41e4597db0b607dab8607e3f4dd31c8a19f4f4"
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
