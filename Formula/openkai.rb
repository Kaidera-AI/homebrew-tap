class Openkai < Formula
  desc "Open agent harness + TUI — 30+ providers, durable memory, multi-model fusion"
  homepage "https://github.com/Kaidera-AI/OpenKai"
  version "0.1.12"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Kaidera-AI/OpenKai/releases/download/v0.1.12/openkai-darwin-arm64",
          using: :nounzip
      sha256 "2536d440edf66f8975530abf45c2af91ad5bd232af7820fc4c8efade6078763c"
    end
    on_intel do
      url "https://github.com/Kaidera-AI/OpenKai/releases/download/v0.1.12/openkai-darwin-x64",
          using: :nounzip
      sha256 "741a899e07cf9907674c8e8379582cde7e542f662248bb633c8aed50c408428e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Kaidera-AI/OpenKai/releases/download/v0.1.12/openkai-linux-arm64",
          using: :nounzip
      sha256 "edd120510bf6026a4b368588df02712dd8e7c7a1c2cd2121152d3f087dab22a7"
    end
    on_intel do
      url "https://github.com/Kaidera-AI/OpenKai/releases/download/v0.1.12/openkai-linux-x64",
          using: :nounzip
      sha256 "d890c16526ff67c4347192c20057b09ddb591be70405676458b8fbef86cfeeeb"
    end
  end

  def install
    bin.install Dir["openkai-*"].first => "openkai"
  end

  test do
    assert_match "openkai", shell_output("#{bin}/openkai --version")
  end
end
