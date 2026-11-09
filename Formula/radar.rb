class Radar < Formula
  desc "Terminal workspace for GitLab, GitHub, Jira, Slack, Git, and local work"
  homepage "https://github.com/temet-ai/radar"
  license "MIT"
  version "0.1.0-alpha.20"

  on_macos do
    on_arm do
      url "https://github.com/temet-ai/radar/releases/download/v0.1.0-alpha.20/radar-v0.1.0-alpha.20-aarch64-apple-darwin.tar.gz"
      sha256 "4a98a9947bf0c67514e27d8b38eb2a97ef37bab5ec0485a9b8b7ad4356f97fac"
    end
    on_intel do
      url "https://github.com/temet-ai/radar/releases/download/v0.1.0-alpha.20/radar-v0.1.0-alpha.20-x86_64-apple-darwin.tar.gz"
      sha256 "40596fc71bc0f97d5cd7435996ee6a5adc4dfdf5826c6b5203e5ce346728cceb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/temet-ai/radar/releases/download/v0.1.0-alpha.20/radar-v0.1.0-alpha.20-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b4c3e15884ccf76b9b0cde5eb636b9cb5b8411c8504e448ab4d69ef5378b7feb"
    end
    on_intel do
      url "https://github.com/temet-ai/radar/releases/download/v0.1.0-alpha.20/radar-v0.1.0-alpha.20-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "db98b02764976948e04475efe7b762b14d864541ca03780f4a7b49865109e283"
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
