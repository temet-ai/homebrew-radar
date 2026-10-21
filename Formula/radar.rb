class Radar < Formula
  desc "Terminal workspace for GitLab, GitHub, Jira, Slack, Git, and local work"
  homepage "https://github.com/temet-ai/radar"
  license "MIT"
  version "0.1.0-alpha.14"

  # The Mac url sits outside on_arm: Homebrew needs a url to load the formula
  # at all, so on an Intel Mac it would fail with "requires at least a URL"
  # before depends_on can say that radar needs Apple Silicon.
  on_macos do
    depends_on arch: :arm64
    url "https://github.com/temet-ai/radar/releases/download/v0.1.0-alpha.14/radar-v0.1.0-alpha.14-aarch64-apple-darwin.tar.gz"
    sha256 "9b9b7816ef0c0c71b952c1f281c93757c4de12ac91fa23ac33718a132baedaf0"
  end

  on_linux do
    on_arm do
      url "https://github.com/temet-ai/radar/releases/download/v0.1.0-alpha.14/radar-v0.1.0-alpha.14-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0be07fe555fd7e272d6d5f5a70965d3cca89ce50f957a7119733cdad0cfd8068"
    end
    on_intel do
      url "https://github.com/temet-ai/radar/releases/download/v0.1.0-alpha.14/radar-v0.1.0-alpha.14-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fe7bdfa6e5500b1b5517ad56079e5e9cbfb1503eb43804209f26445fcb61b35e"
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
