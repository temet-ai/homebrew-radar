class Radar < Formula
  desc "Terminal workspace for GitLab, GitHub, Jira, Slack, Git, and local work"
  homepage "https://github.com/temet-ai/radar"
  license "MIT"
  version "0.1.0-alpha.18"

  on_macos do
    on_arm do
      url "https://github.com/temet-ai/radar/releases/download/v0.1.0-alpha.18/radar-v0.1.0-alpha.18-aarch64-apple-darwin.tar.gz"
      sha256 "1368567b848a0137c2f8701c9ac8c99eefd731f08dc610a937febab926ee0091"
    end
    on_intel do
      url "https://github.com/temet-ai/radar/releases/download/v0.1.0-alpha.18/radar-v0.1.0-alpha.18-x86_64-apple-darwin.tar.gz"
      sha256 "44553f8138de9e01aba92c6ccd44100187cd63fcea1b2431ce05d8349c56446c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/temet-ai/radar/releases/download/v0.1.0-alpha.18/radar-v0.1.0-alpha.18-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "db111ddf09ac57f7137e1df5d5d048e13a9be0d057de2c83693f1d2ddbc9f656"
    end
    on_intel do
      url "https://github.com/temet-ai/radar/releases/download/v0.1.0-alpha.18/radar-v0.1.0-alpha.18-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f1b9d4bdaaa13de99269de4cb62e30a9d93d629f84739bc43f4f0d5f838c413c"
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
