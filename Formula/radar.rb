class Radar < Formula
  desc "Terminal workspace for GitLab, GitHub, Jira, Slack, Git, and local work"
  homepage "https://github.com/temet-ai/radar"
  license "MIT"
  version "0.1.0-alpha.19"

  on_macos do
    on_arm do
      url "https://github.com/temet-ai/radar/releases/download/v0.1.0-alpha.19/radar-v0.1.0-alpha.19-aarch64-apple-darwin.tar.gz"
      sha256 "b2ff867975dbe3b29c3506d3e2e98ac425ac247e1e5fa56863229737bf11e17f"
    end
    on_intel do
      url "https://github.com/temet-ai/radar/releases/download/v0.1.0-alpha.19/radar-v0.1.0-alpha.19-x86_64-apple-darwin.tar.gz"
      sha256 "1237de4864052b240aa47a0f964dcc13ffc2e066a801500477062c9ce2613d1a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/temet-ai/radar/releases/download/v0.1.0-alpha.19/radar-v0.1.0-alpha.19-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fa446e4c321b4d46444d1683edc97a48012effed55c2e6709f9acbe9b750f731"
    end
    on_intel do
      url "https://github.com/temet-ai/radar/releases/download/v0.1.0-alpha.19/radar-v0.1.0-alpha.19-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0af6b2c7f2fe586c46c96a29d2370e3eceab313d3d42d1590e8ecf693087cd3b"
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
