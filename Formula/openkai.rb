class Openkai < Formula
  desc "Open agent harness + TUI — 30+ providers, durable memory, multi-model fusion"
  homepage "https://github.com/Kaidera-AI/OpenKai"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Kaidera-AI/OpenKai/releases/download/v0.01.001/openkai-darwin-arm64"
      sha256 "0fe3e3b3f22d89a3bc12006bc7351ca6c2f7abf485c3c056b141f80223aa9c55"
    end
    on_intel do
      url "https://github.com/Kaidera-AI/OpenKai/releases/download/v0.01.001/openkai-darwin-x64"
      sha256 "446b353d75cc4d41612b4bd48da2d38a72a444e914b9176d8a113622635b0fc6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Kaidera-AI/OpenKai/releases/download/v0.01.001/openkai-linux-arm64"
      sha256 "cf9c2f0d860bec3568dff13aaed7bce8dde767c33d9c7f83244d26c40bd22221"
    end
    on_intel do
      url "https://github.com/Kaidera-AI/OpenKai/releases/download/v0.01.001/openkai-linux-x64"
      sha256 "c2b6375ca2edf32b606409adc2091d16309552cc0d251e9cbd597619902f1b65"
    end
  end

  def install
    bin.install Dir["openkai-*"].first => "openkai"
  end

  test do
    assert_match "openkai #{version}", shell_output("#{bin}/openkai --version")
  end
end
