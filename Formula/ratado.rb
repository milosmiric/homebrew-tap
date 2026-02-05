class Ratado < Formula
  desc "A fast, keyboard-driven terminal task manager built with Rust and Ratatui"
  homepage "https://github.com/milosmiric/ratado"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/milosmiric/ratado/releases/download/v0.2.0/ratado-aarch64-apple-darwin.tar.gz"
      sha256 "7722071b2072ba4c939f726f09dcaf92e272479bb2c5a640531bcacae66007f1"
    end
    on_intel do
      url "https://github.com/milosmiric/ratado/releases/download/v0.2.0/ratado-x86_64-apple-darwin.tar.gz"
      sha256 "2571bf3243bc3953e3b782fc6064256c30790ce3e73c9017b4634625cd5fd51e"
    end
  end

  on_linux do
    url "https://github.com/milosmiric/ratado/releases/download/v0.2.0/ratado-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "d380653b5c3726c11606db842a1e461147116b79a325af75d659fcaa7e4d6b1f"
  end

  def install
    bin.install "ratado"
  end

  test do
    assert_match "ratado", shell_output("#{bin}/ratado --version")
  end
end
