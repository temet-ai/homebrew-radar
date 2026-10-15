class Radar < Formula
  desc "Terminal workspace for GitLab, GitHub, Jira, Slack, Git, and local work"
  homepage "https://github.com/temet-ai/radar"
  license "MIT"
  version "0.1.0-alpha.5"

  on_macos do
    on_arm do
      url "https://github.com/temet-ai/radar/releases/download/v0.1.0-alpha.5/radar-v0.1.0-alpha.5-aarch64-apple-darwin.tar.gz"
      sha256 "c5f881c48b2aae29b59b2aadeae63c7e8ba1bab1ab577b13a5feb04ecb909cc4"
    end
    on_intel do
      url "https://github.com/temet-ai/radar/releases/download/v0.1.0-alpha.5/radar-v0.1.0-alpha.5-x86_64-apple-darwin.tar.gz"
      sha256 "5713f4dfcab952415eab7d086c78096fbb5508faf86f80273a2a778853c3182b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/temet-ai/radar/releases/download/v0.1.0-alpha.5/radar-v0.1.0-alpha.5-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6ba329d26b13403a34e39c36bec3ffdd11c37abc6ed835b59bbb6f70c2ba425b"
    end
    on_intel do
      url "https://github.com/temet-ai/radar/releases/download/v0.1.0-alpha.5/radar-v0.1.0-alpha.5-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c1229cd92a84c7784e8d762ddc733622fcabbf08aa8411165dae366274e8cf46"
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
