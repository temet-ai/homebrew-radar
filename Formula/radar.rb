class Radar < Formula
  desc "Terminal workspace for GitLab, GitHub, Jira, Slack, Git, and local work"
  homepage "https://github.com/temet-ai/radar"
  license "MIT"
  version "0.1.0-alpha.7"

  on_macos do
    on_arm do
      url "https://github.com/temet-ai/radar/releases/download/v0.1.0-alpha.7/radar-v0.1.0-alpha.7-aarch64-apple-darwin.tar.gz"
      sha256 "f48cf896876ec79282c036fe09dcd533a1b2678f87a0152275136159648e6182"
    end
    on_intel do
      url "https://github.com/temet-ai/radar/releases/download/v0.1.0-alpha.7/radar-v0.1.0-alpha.7-x86_64-apple-darwin.tar.gz"
      sha256 "2ca7d5d246e1d83f4d9a2f0257f46e6a83ec56f2eecee515f1d14418505859ef"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/temet-ai/radar/releases/download/v0.1.0-alpha.7/radar-v0.1.0-alpha.7-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d7c9b9a1763fe6daecd2a8394762ddf472319ffa185c747064b4976b5c3e576f"
    end
    on_intel do
      url "https://github.com/temet-ai/radar/releases/download/v0.1.0-alpha.7/radar-v0.1.0-alpha.7-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1191b5cfc09885614f767c0b347d9512a287f70ef9e0225de7568c65da0a1243"
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
