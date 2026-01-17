class Ratado < Formula
  desc "A fast, keyboard-driven terminal task manager built with Rust and Ratatui"
  homepage "https://github.com/milosmiric/ratado"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/milosmiric/ratado/releases/download/v0.1.0/ratado-aarch64-apple-darwin.tar.gz"
      sha256 "521636105389a376a8e2763d70e656456439fc1aa0f7130094a1672444d599c2"
    end
    on_intel do
      url "https://github.com/milosmiric/ratado/releases/download/v0.1.0/ratado-x86_64-apple-darwin.tar.gz"
      sha256 "eb03e2e75485ed8e0a4e6d25f6ff4b27a5813c6c1065135272a7f7d5da3a30e7"
    end
  end

  on_linux do
    url "https://github.com/milosmiric/ratado/releases/download/v0.1.0/ratado-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "cca94da880720fd071805546df8c44c6db72584fd1cecf321b86d9698fb2542c"
  end

  def install
    bin.install "ratado"
  end

  test do
    assert_match "ratado", shell_output("#{bin}/ratado --version")
  end
end
