class Openkai < Formula
  desc "Open agent harness + TUI — 30+ providers, durable memory, multi-model fusion"
  homepage "https://github.com/Kaidera-AI/OpenKai"
  version "0.1.14"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Kaidera-AI/OpenKai/releases/download/v0.1.14/openkai-darwin-arm64",
          using: :nounzip
      sha256 "8f2c694da101b19e140ecba15b9dec9b0b7589dfb3b1ea11847959ba79056be8"
    end
    on_intel do
      url "https://github.com/Kaidera-AI/OpenKai/releases/download/v0.1.14/openkai-darwin-x64",
          using: :nounzip
      sha256 "c894676d1dd4437456311adce80d59b57da4655c6640c70d875a66e6fed4666d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Kaidera-AI/OpenKai/releases/download/v0.1.14/openkai-linux-arm64",
          using: :nounzip
      sha256 "2a2650766222f6074b25287e185e44c941a2dd8c037c5fc99c85aa841bd13e2b"
    end
    on_intel do
      url "https://github.com/Kaidera-AI/OpenKai/releases/download/v0.1.14/openkai-linux-x64",
          using: :nounzip
      sha256 "145ae96b0d1b1304c915b58d9bbb5abcc3d940193b1e11010404aed29c38bb6b"
    end
  end

  def install
    bin.install Dir["openkai-*"].first => "openkai"
  end

  test do
    assert_match "openkai", shell_output("#{bin}/openkai --version")
  end
end
