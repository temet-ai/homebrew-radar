class Radar < Formula
  desc "Terminal workspace for GitLab, GitHub, Jira, Slack, Git, and local work"
  homepage "https://github.com/temet-ai/radar"
  license "MIT"
  version "0.1.0-alpha.9"

  on_macos do
    on_arm do
      url "https://github.com/temet-ai/radar/releases/download/v0.1.0-alpha.9/radar-v0.1.0-alpha.9-aarch64-apple-darwin.tar.gz"
      sha256 "db19a4822961a6f914bb0326374c54c050e503e855335307fbcb3dc4e618876f"
    end
    on_intel do
      url "https://github.com/temet-ai/radar/releases/download/v0.1.0-alpha.9/radar-v0.1.0-alpha.9-x86_64-apple-darwin.tar.gz"
      sha256 "3887945e37022a8c85ffb5669e9a17aeaa30188c569cd63a417f68c18a6dd3b5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/temet-ai/radar/releases/download/v0.1.0-alpha.9/radar-v0.1.0-alpha.9-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "25a4af055af85096d0d3ffef0ff24a9bbca57f13d6c50c989e6032caa9fdabd3"
    end
    on_intel do
      url "https://github.com/temet-ai/radar/releases/download/v0.1.0-alpha.9/radar-v0.1.0-alpha.9-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "dad9048a7d6b9fff2a659f2ecfeac04aa8ddf8fdaa39c3c9b4b86b9a9f2e26b2"
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
