class Radar < Formula
  desc "Terminal workspace for GitLab, GitHub, Jira, Slack, Git, and local work"
  homepage "https://github.com/temet-ai/radar"
  license "MIT"
  version "0.1.0-alpha.15"

  on_macos do
    on_arm do
      url "https://github.com/temet-ai/radar/releases/download/v0.1.0-alpha.15/radar-v0.1.0-alpha.15-aarch64-apple-darwin.tar.gz"
      sha256 "69dec138c82825b1baf37b2d8b66fb19afa9a5ac32c68c2c14ebf0d27398481f"
    end
    on_intel do
      url "https://github.com/temet-ai/radar/releases/download/v0.1.0-alpha.15/radar-v0.1.0-alpha.15-x86_64-apple-darwin.tar.gz"
      sha256 "314d089380112d369dde1418cf66370920b1c7d9410dcb658d5bcce23856efcd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/temet-ai/radar/releases/download/v0.1.0-alpha.15/radar-v0.1.0-alpha.15-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d3361a3d1316a477cdf385f99abfb897c74116bad1d63d12008861b770e97ac6"
    end
    on_intel do
      url "https://github.com/temet-ai/radar/releases/download/v0.1.0-alpha.15/radar-v0.1.0-alpha.15-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4cac73933f54d0b245325076b55273570c764e3d794a0bd7d85c73b30915b272"
    end
  end

  def install
    bin.install "radar"
    prefix.install "LICENSE", "THIRD-PARTY-NOTICES.md"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/radar --version")
  end
end
