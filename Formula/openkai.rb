class Openkai < Formula
  desc "Open agent harness + TUI — 30+ providers, durable memory, multi-model fusion"
  homepage "https://github.com/Kaidera-AI/OpenKai"
  version "0.1.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Kaidera-AI/OpenKai/releases/download/v0.1.010/omp-darwin-arm64",
          using: :nounzip
      sha256 "fef7e42c759aacc6775b16de01fac992cff401215cca4fbcb4791e8c41556de3"
    end
    on_intel do
      url "https://github.com/Kaidera-AI/OpenKai/releases/download/v0.1.010/omp-darwin-x64",
          using: :nounzip
      sha256 "26db432b4b1c390937d4da6d64c1876efcd0dd63702528b001e439ba048a40d5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Kaidera-AI/OpenKai/releases/download/v0.1.010/omp-linux-arm64",
          using: :nounzip
      sha256 "20cfb897e15e090cdb38084ce537b8cd9b5d643ca1115a8f6a35f73552212c8b"
    end
    on_intel do
      url "https://github.com/Kaidera-AI/OpenKai/releases/download/v0.1.010/omp-linux-x64",
          using: :nounzip
      sha256 "7974f25fffd6e224f4a784a479282c3e7000f907741b8e21182528b72a277bd8"
    end
  end

  def install
    bin.install Dir["omp-*"].first => "openkai"
  end

  test do
    assert_match "openkai", shell_output("#{bin}/openkai --version")
  end
end
