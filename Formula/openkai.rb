class Openkai < Formula
  desc "Open agent harness + TUI — 30+ providers, durable memory, multi-model fusion"
  homepage "https://github.com/Kaidera-AI/OpenKai"
  version "0.1.15"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Kaidera-AI/OpenKai/releases/download/v0.1.15/openkai-darwin-arm64",
          using: :nounzip
      sha256 "3227f48da4cba108611194ed3431783284b4a936dd153eb9a9bfcf88ff3dc76f"
    end
    on_intel do
      url "https://github.com/Kaidera-AI/OpenKai/releases/download/v0.1.15/openkai-darwin-x64",
          using: :nounzip
      sha256 "b6e4ff5b7fb21620b8bc2d12ee51525fb42a2fc1ae5f29c36d931535e4758646"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Kaidera-AI/OpenKai/releases/download/v0.1.15/openkai-linux-arm64",
          using: :nounzip
      sha256 "1135ebaa13ba12ff8cfe1d5f3d88f1ac1d1b8020338827089ea544a94d99ef72"
    end
    on_intel do
      url "https://github.com/Kaidera-AI/OpenKai/releases/download/v0.1.15/openkai-linux-x64",
          using: :nounzip
      sha256 "b39a9a7beae5d4e0285801961a88d6083015ef3e682451a6b84f76659ac59d02"
    end
  end

  def install
    bin.install Dir["openkai-*"].first => "openkai"
  end

  test do
    assert_match "openkai", shell_output("#{bin}/openkai --version")
  end
end
