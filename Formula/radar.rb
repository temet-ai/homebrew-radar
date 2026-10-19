class Radar < Formula
  desc "Terminal workspace for GitLab, GitHub, Jira, Slack, Git, and local work"
  homepage "https://github.com/temet-ai/radar"
  license "MIT"
  version "0.1.0-alpha.13"

  on_macos do
    depends_on arch: :arm64
    on_arm do
      url "https://github.com/temet-ai/radar/releases/download/v0.1.0-alpha.13/radar-v0.1.0-alpha.13-aarch64-apple-darwin.tar.gz"
      sha256 "08a5dfe157badb40757ac211611c9d2b2e9049ab651e025f99d25ce553da67a7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/temet-ai/radar/releases/download/v0.1.0-alpha.13/radar-v0.1.0-alpha.13-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0d426b1d6390e3d0ca38b5263a34d95124dfd203a96bfa9a22f70b868aded172"
    end
    on_intel do
      url "https://github.com/temet-ai/radar/releases/download/v0.1.0-alpha.13/radar-v0.1.0-alpha.13-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "92dc2b4f88a06a53c96f7188f980693a351e86fc7aef9682aea589521f3be0d8"
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
