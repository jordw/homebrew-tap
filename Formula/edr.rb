class Edr < Formula
  desc "The editor for agents — context-preserving code navigation and editing"
  homepage "https://github.com/jordw/edr"
  license "MIT"
  version "0.2.0-beta1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jordw/edr/releases/download/v0.2.0-beta1/edr_0.2.0-beta1_darwin_arm64.tar.gz"
      sha256 "425028a6706b6da26438e6edf8528dcf7eec9b7ab36e5d685341e745486e980d"
    else
      url "https://github.com/jordw/edr/releases/download/v0.2.0-beta1/edr_0.2.0-beta1_darwin_amd64.tar.gz"
      sha256 "72fea86a318742356639d6db4a59dd7682b725b895dd4f960cc3aff073429f80"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jordw/edr/releases/download/v0.2.0-beta1/edr_0.2.0-beta1_linux_arm64.tar.gz"
      sha256 "80b4e5beead0b73e6564a820a0f84573fcae459e1d1ada4e0d8af47f9510e49c"
    else
      url "https://github.com/jordw/edr/releases/download/v0.2.0-beta1/edr_0.2.0-beta1_linux_amd64.tar.gz"
      sha256 "247efca11484df078252529f3f10a73e7fa6db06b2923e277808dc5be0441770"
    end
  end

  def install
    bin.install "edr"
  end

  test do
    system "#{bin}/edr", "--version"
  end
end
