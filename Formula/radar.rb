class Radar < Formula
  desc "Terminal workspace for GitLab, GitHub, Jira, Slack, Git, and local work"
  homepage "https://github.com/temet-ai/radar"
  license "MIT"
  version "0.1.0-alpha.10"

  on_macos do
    depends_on arch: :arm64
    on_arm do
      url "https://github.com/temet-ai/radar/releases/download/v0.1.0-alpha.10/radar-v0.1.0-alpha.10-aarch64-apple-darwin.tar.gz"
      sha256 "fb919b9e48e8c7c503e8ee5192149ea593232ce2c4511c2137f6e0fa43983ab2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/temet-ai/radar/releases/download/v0.1.0-alpha.10/radar-v0.1.0-alpha.10-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "66cafd900a862c68e5079c78a7089de147bb11a0794b9d49af4fa994db6886d2"
    end
    on_intel do
      url "https://github.com/temet-ai/radar/releases/download/v0.1.0-alpha.10/radar-v0.1.0-alpha.10-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6f95cebf8241e486bd16f447768655b0e0056a87ac2a5758796c3e9b064521c8"
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
