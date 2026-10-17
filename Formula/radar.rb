class Radar < Formula
  desc "Terminal workspace for GitLab, GitHub, Jira, Slack, Git, and local work"
  homepage "https://github.com/temet-ai/radar"
  license "MIT"
  version "0.1.0-alpha.8"

  on_macos do
    on_arm do
      url "https://github.com/temet-ai/radar/releases/download/v0.1.0-alpha.8/radar-v0.1.0-alpha.8-aarch64-apple-darwin.tar.gz"
      sha256 "c976c580d80bf416975853b226afadf1363368bb5a117716e7504005a313093c"
    end
    on_intel do
      url "https://github.com/temet-ai/radar/releases/download/v0.1.0-alpha.8/radar-v0.1.0-alpha.8-x86_64-apple-darwin.tar.gz"
      sha256 "e9ab67dc9a739f887e302baa5f71c0adf0126c72f4e671f507df8d8b46c6cf3d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/temet-ai/radar/releases/download/v0.1.0-alpha.8/radar-v0.1.0-alpha.8-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "99f52f7caa9b22edf11ce4c06393c46edc1b5a3adaf9ba86e5bfdb3e84c81615"
    end
    on_intel do
      url "https://github.com/temet-ai/radar/releases/download/v0.1.0-alpha.8/radar-v0.1.0-alpha.8-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "60696cdd4cc7f87d493712041789f933e842ff92d2d1e1c56334962c52bfb4c6"
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
