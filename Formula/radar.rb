class Radar < Formula
  desc "Terminal workspace for GitLab, GitHub, Jira, Slack, Git, and local work"
  homepage "https://github.com/temet-ai/radar"
  license "MIT"
  version "0.1.0-alpha.12"

  on_macos do
    depends_on arch: :arm64
    on_arm do
      url "https://github.com/temet-ai/radar/releases/download/v0.1.0-alpha.12/radar-v0.1.0-alpha.12-aarch64-apple-darwin.tar.gz"
      sha256 "20e2afeb49842c3121782c8b90f56678485b8dd9e7c237a9a45c5cbf8d7b4dd2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/temet-ai/radar/releases/download/v0.1.0-alpha.12/radar-v0.1.0-alpha.12-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "737dc394bcbfaf8f696eb0a5c238deff4f436bbd168ec2df847f4ad1dc9a483f"
    end
    on_intel do
      url "https://github.com/temet-ai/radar/releases/download/v0.1.0-alpha.12/radar-v0.1.0-alpha.12-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "43ab692aff6f04bb52f76fb80996c0fc46eec304665244ae7cb0230a74a46b72"
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
