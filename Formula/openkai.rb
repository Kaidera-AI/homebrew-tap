class Openkai < Formula
  desc "Open agent harness + TUI — 30+ providers, durable memory, multi-model fusion"
  homepage "https://github.com/Kaidera-AI/OpenKai"
  version "0.1.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Kaidera-AI/OpenKai/releases/download/v0.01.004/openkai-darwin-arm64"
      sha256 "010d50fd4239185a9dcf2231b659b48ebd013a6bf3729eaab02074ec5de75f84"
    end
    on_intel do
      url "https://github.com/Kaidera-AI/OpenKai/releases/download/v0.01.004/openkai-darwin-x64"
      sha256 "996b315366d12b57374d8971e00ea537ea5f7f74b59cf15b74bb98817fc78dfd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Kaidera-AI/OpenKai/releases/download/v0.01.004/openkai-linux-arm64"
      sha256 "1c1702218a56bdefb5cd6a22337aae86a4d4ea569449cc49ea014e3abda02566"
    end
    on_intel do
      url "https://github.com/Kaidera-AI/OpenKai/releases/download/v0.01.004/openkai-linux-x64"
      sha256 "0000d673e7ddabee2092d7c237b00184452971a65f0c1b1dc69cb268a8a933c6"
    end
  end

  def install
    bin.install Dir["openkai-*"].first => "openkai"
  end

  test do
    assert_match "openkai #{version}", shell_output("#{bin}/openkai --version")
  end
end
