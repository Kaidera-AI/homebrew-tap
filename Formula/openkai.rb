class Openkai < Formula
  desc "Open agent harness + TUI — 30+ providers, durable memory, multi-model fusion"
  homepage "https://github.com/Kaidera-AI/OpenKai"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Kaidera-AI/OpenKai/releases/download/v0.01.003/openkai-darwin-arm64"
      sha256 "f21471ba560016cc12a02455da989dc8153616bebdc1987965a2aac0cfd2b7fd"
    end
    on_intel do
      url "https://github.com/Kaidera-AI/OpenKai/releases/download/v0.01.003/openkai-darwin-x64"
      sha256 "4ed687ef466c5e8813966d2903993d13abb472807f273c147f6a459fb7a1f733"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Kaidera-AI/OpenKai/releases/download/v0.01.003/openkai-linux-arm64"
      sha256 "cfdea4c830cc651a1d895bfe521c8dd03820eec69aaffe058f272df77a5b2d68"
    end
    on_intel do
      url "https://github.com/Kaidera-AI/OpenKai/releases/download/v0.01.003/openkai-linux-x64"
      sha256 "23c07353e7894cd57f1cefa2303d0c8a202105901b22b748e01ea816de806f3f"
    end
  end

  def install
    bin.install Dir["openkai-*"].first => "openkai"
  end

  test do
    assert_match "openkai #{version}", shell_output("#{bin}/openkai --version")
  end
end
