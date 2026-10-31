class Radar < Formula
  desc "Terminal workspace for GitLab, GitHub, Jira, Slack, Git, and local work"
  homepage "https://github.com/temet-ai/radar"
  license "MIT"
  version "0.1.0-alpha.17"

  on_macos do
    on_arm do
      url "https://github.com/temet-ai/radar/releases/download/v0.1.0-alpha.17/radar-v0.1.0-alpha.17-aarch64-apple-darwin.tar.gz"
      sha256 "38dc53767864fb85b8e68d35907a25bee2c6635abc36d6b262c1a277484c6ff5"
    end
    on_intel do
      url "https://github.com/temet-ai/radar/releases/download/v0.1.0-alpha.17/radar-v0.1.0-alpha.17-x86_64-apple-darwin.tar.gz"
      sha256 "20149d8d91d426c81086c6f84303036d42be2f97152d0e8c24b4c0953350974c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/temet-ai/radar/releases/download/v0.1.0-alpha.17/radar-v0.1.0-alpha.17-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e295120e967dae3bf6e6f5e059933192e661acef7ed920093d3fb78288253cff"
    end
    on_intel do
      url "https://github.com/temet-ai/radar/releases/download/v0.1.0-alpha.17/radar-v0.1.0-alpha.17-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "83a7e236fd18c5d8299a0221fbdf32b1d5f43b264b6880dd5b5c73f48c748e9c"
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
