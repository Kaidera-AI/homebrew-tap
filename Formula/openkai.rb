class Openkai < Formula
  desc "Open agent harness + TUI — 30+ providers, durable memory, multi-model fusion"
  homepage "https://github.com/Kaidera-AI/OpenKai"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Kaidera-AI/OpenKai/releases/download/v0.01.001/openkai-darwin-arm64"
      sha256 "b79058d9c549d3a52c8847c91dc470efbf757b0d6611ca08790d518ab6e37b77"
    end
    on_intel do
      url "https://github.com/Kaidera-AI/OpenKai/releases/download/v0.01.001/openkai-darwin-x64"
      sha256 "2e41b36ee0a9b8eeabfc90dc49616acb84f51c69be2b11a1b59921f4f80944d5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Kaidera-AI/OpenKai/releases/download/v0.01.001/openkai-linux-arm64"
      sha256 "a5d86f72c5f1d9c28d720adb2a02e10ca6d9124c2738a990c40fc16f1608eb82"
    end
    on_intel do
      url "https://github.com/Kaidera-AI/OpenKai/releases/download/v0.01.001/openkai-linux-x64"
      sha256 "bb798ce5174bc5acdc91a11f8e48de693724bf02d29dfa3c9fc1d5367b918672"
    end
  end

  def install
    bin.install Dir["openkai-*"].first => "openkai"
  end

  test do
    assert_match "openkai #{version}", shell_output("#{bin}/openkai --version")
  end
end
