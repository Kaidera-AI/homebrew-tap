class Openkai < Formula
  desc "Open agent harness + TUI — 30+ providers, durable memory, multi-model fusion"
  homepage "https://github.com/Kaidera-AI/OpenKai"
  version "0.1.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Kaidera-AI/OpenKai/releases/download/v0.1.009/openkai-darwin-arm64"
      sha256 "308c6ecf150b9118efd22aa05eb29ebdbb2f20c70c94b81fcef850e227c33709"
    end
    on_intel do
      url "https://github.com/Kaidera-AI/OpenKai/releases/download/v0.1.009/openkai-darwin-x64"
      sha256 "c292cd4d233183f4c17a2d241ac59c92cdcd366a0559ff63f52342a9f266766f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Kaidera-AI/OpenKai/releases/download/v0.1.009/openkai-linux-arm64"
      sha256 "ffe2f0ff0040ebbdbc4c665aa340f6ad2ea43db7bfbf6917dab7ad5367251e5f"
    end
    on_intel do
      url "https://github.com/Kaidera-AI/OpenKai/releases/download/v0.1.009/openkai-linux-x64"
      sha256 "d98a058caea0199cd6bdfff9cafc3a5fd2c89a5c745b17fb4729daa67a86904c"
    end
  end

  def install
    bin.install Dir["openkai-*"].first => "openkai"
  end

  test do
    assert_match "openkai #{version}", shell_output("#{bin}/openkai --version")
  end
end
