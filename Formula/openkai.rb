class Openkai < Formula
  desc "Open agent harness + TUI — 30+ providers, durable memory, multi-model fusion"
  homepage "https://github.com/Kaidera-AI/OpenKai"
  version "0.1.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Kaidera-AI/OpenKai/releases/download/v0.1.007/openkai-darwin-arm64"
      sha256 "16c1a479b9c0889ae8a4ace001e76ea2a493d356c013f88a479b31c89c8d4e41"
    end
    on_intel do
      url "https://github.com/Kaidera-AI/OpenKai/releases/download/v0.1.007/openkai-darwin-x64"
      sha256 "3696cb5ac6cf282dd82ce4b2f37005908fbd2f1edf1e00fa35c6da633c32cf97"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Kaidera-AI/OpenKai/releases/download/v0.1.007/openkai-linux-arm64"
      sha256 "df3c3eebfbaf1508582f5b5bae08b21116e6362d1ce4dffd48e39870d1340a75"
    end
    on_intel do
      url "https://github.com/Kaidera-AI/OpenKai/releases/download/v0.1.007/openkai-linux-x64"
      sha256 "60fb27e366b39c8699c711d26e94eb7112a0c5955d1daf09ecfa9a8196fab39f"
    end
  end

  def install
    bin.install Dir["openkai-*"].first => "openkai"
  end

  test do
    assert_match "openkai #{version}", shell_output("#{bin}/openkai --version")
  end
end
