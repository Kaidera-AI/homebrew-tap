class Openkai < Formula
  desc "Open agent harness + TUI — 30+ providers, durable memory, multi-model fusion"
  homepage "https://github.com/Kaidera-AI/OpenKai"
  version "0.1.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Kaidera-AI/OpenKai/releases/download/v0.1.008/openkai-darwin-arm64"
      sha256 "e0da9a6395a1fb265fca52722c8513777ed12c3207c4f025ab6adf87f1ad3839"
    end
    on_intel do
      url "https://github.com/Kaidera-AI/OpenKai/releases/download/v0.1.008/openkai-darwin-x64"
      sha256 "8d8d6dfae13a2bfa5edc22d9a976c7ce5884d0ccc178da04132d63c8e0569c4f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Kaidera-AI/OpenKai/releases/download/v0.1.008/openkai-linux-arm64"
      sha256 "14d9967bf242caa9d3a90c925a4b73f808fa50858e28984bc3d18c125b6e2517"
    end
    on_intel do
      url "https://github.com/Kaidera-AI/OpenKai/releases/download/v0.1.008/openkai-linux-x64"
      sha256 "1ab5d5a55725d7a3e585a35027f99b0ac1de7f005257b20f58498d9508a9a062"
    end
  end

  def install
    bin.install Dir["openkai-*"].first => "openkai"
  end

  test do
    assert_match "openkai #{version}", shell_output("#{bin}/openkai --version")
  end
end
