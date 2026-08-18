class Openkai < Formula
  desc "Open agent harness + TUI — 30+ providers, durable memory, multi-model fusion"
  homepage "https://github.com/Kaidera-AI/OpenKai"
  version "0.1.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Kaidera-AI/OpenKai/releases/download/v0.1.006/openkai-darwin-arm64"
      sha256 "3c5d85ab10e402584cf1e9abe248f18eaa5245fcb0dfad9fbd8c53f8f17ed050"
    end
    on_intel do
      url "https://github.com/Kaidera-AI/OpenKai/releases/download/v0.1.006/openkai-darwin-x64"
      sha256 "ad70303029b2da10b32a41ae4e080a721bde3ca9be1e2f3fc9a84b56324439ec"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Kaidera-AI/OpenKai/releases/download/v0.1.006/openkai-linux-arm64"
      sha256 "c658c024142550ced38df012f65f071e4d85650a56f1badc0a48d4148e28d8c3"
    end
    on_intel do
      url "https://github.com/Kaidera-AI/OpenKai/releases/download/v0.1.006/openkai-linux-x64"
      sha256 "15c45e33ad25f8dfe67ceba0b280a5035927b26cdae46587e019f4ddb69fa2f0"
    end
  end

  def install
    bin.install Dir["openkai-*"].first => "openkai"
  end

  test do
    assert_match "openkai #{version}", shell_output("#{bin}/openkai --version")
  end
end
