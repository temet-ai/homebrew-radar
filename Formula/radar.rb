class Radar < Formula
  desc "Terminal workspace for GitLab, GitHub, Jira, Slack, Git, and local work"
  homepage "https://github.com/temet-ai/radar"
  license "MIT"
  version "0.1.0-alpha.6"

  on_macos do
    on_arm do
      url "https://github.com/temet-ai/radar/releases/download/v0.1.0-alpha.6/radar-v0.1.0-alpha.6-aarch64-apple-darwin.tar.gz"
      sha256 "d78bdc6b6ec6219c155ee0d68263f06d8ec9d75961e77f2b5d4618b064ab067a"
    end
    on_intel do
      url "https://github.com/temet-ai/radar/releases/download/v0.1.0-alpha.6/radar-v0.1.0-alpha.6-x86_64-apple-darwin.tar.gz"
      sha256 "1cdf83d534ffc4c920d1e2768209c6b3ec3cc49abf5967697f7fcf066ee22d7b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/temet-ai/radar/releases/download/v0.1.0-alpha.6/radar-v0.1.0-alpha.6-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3366689b7b8945dda260236c5e3e375066592d26475b34139098bbebe716a608"
    end
    on_intel do
      url "https://github.com/temet-ai/radar/releases/download/v0.1.0-alpha.6/radar-v0.1.0-alpha.6-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b5e5aac255573fc1d6c27a05ba87401534af965b5804448aec9fb7c1f4043747"
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
