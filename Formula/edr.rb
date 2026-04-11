class Edr < Formula
  desc "The editor for agents — context-preserving code navigation and editing"
  homepage "https://github.com/jordw/edr"
  license "MIT"
  version "0.3.6"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jordw/edr/releases/download/v0.3.6/edr_0.3.6_darwin_arm64.tar.gz"
      sha256 "cc72ffc8872aec2b995e16ada29451b215f0e2f371f1dd5db41e2c4659e546dd"
    else
      url "https://github.com/jordw/edr/releases/download/v0.3.6/edr_0.3.6_darwin_amd64.tar.gz"
      sha256 "c2ab84e4b833687007ad30e8fb40691a769508e3f05c285f2c45a1ebaa157b17"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jordw/edr/releases/download/v0.3.6/edr_0.3.6_linux_arm64.tar.gz"
      sha256 "4911034d66c8ee671307e26c778765c98f33660e6c84a7bbcc243ab0fdaa0a04"
    else
      url "https://github.com/jordw/edr/releases/download/v0.3.6/edr_0.3.6_linux_amd64.tar.gz"
      sha256 "ca57cbe6f19d395733b2472b123e363d70a95c77e8d74369634e9c32ab47f528"
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
