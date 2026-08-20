class Openkai < Formula
  desc "Open agent harness + TUI — 30+ providers, durable memory, multi-model fusion"
  homepage "https://github.com/Kaidera-AI/OpenKai"
  version "0.1.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Kaidera-AI/OpenKai/releases/download/v0.1.008/openkai-darwin-arm64"
      sha256 "b6573045fed3d5e0b47544bc3c7536719fa0755049165b092ad6483f004675dc"
    end
    on_intel do
      url "https://github.com/Kaidera-AI/OpenKai/releases/download/v0.1.008/openkai-darwin-x64"
      sha256 "7a2a0eba6c80ee4e62c2ef9a0eb5930524ec0bdc6e06c6f9f4c8a27582060b07"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Kaidera-AI/OpenKai/releases/download/v0.1.008/openkai-linux-arm64"
      sha256 "c7161aeb136c42fdc935c2562b99f2aca571abb74ebe1996388a8a9750facb26"
    end
    on_intel do
      url "https://github.com/Kaidera-AI/OpenKai/releases/download/v0.1.008/openkai-linux-x64"
      sha256 "072166988ce103519154ed303b8ed62e9492a4bdc010ec0250461bc6e6e667aa"
    end
  end

  def install
    bin.install Dir["openkai-*"].first => "openkai"
  end

  test do
    assert_match "openkai #{version}", shell_output("#{bin}/openkai --version")
  end
end
