class Radar < Formula
  desc "Terminal workspace for GitLab, GitHub, Jira, Slack, Git, and local work"
  homepage "https://github.com/temet-ai/radar"
  license "MIT"
  version "0.1.0-alpha.16"

  on_macos do
    on_arm do
      url "https://github.com/temet-ai/radar/releases/download/v0.1.0-alpha.16/radar-v0.1.0-alpha.16-aarch64-apple-darwin.tar.gz"
      sha256 "0220eb1211d5ecaa26329205ec16e3a61f93ac7c19fe64111d7c07e60c9df259"
    end
    on_intel do
      url "https://github.com/temet-ai/radar/releases/download/v0.1.0-alpha.16/radar-v0.1.0-alpha.16-x86_64-apple-darwin.tar.gz"
      sha256 "6446b680fb11a34c3515c2e6b05fe5b969a0bd2e1f1762bed7f0a2abf6e9ecf0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/temet-ai/radar/releases/download/v0.1.0-alpha.16/radar-v0.1.0-alpha.16-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "29b293f06843781ccdb77f405e72f83e264da79052da071f4ebe0c9e4a4e5d16"
    end
    on_intel do
      url "https://github.com/temet-ai/radar/releases/download/v0.1.0-alpha.16/radar-v0.1.0-alpha.16-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "039ebaba84bdb39eeb2bf54825a08fabd8f96533325c562b77e025c7a270b5c8"
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
