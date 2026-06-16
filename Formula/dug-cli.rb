class DugCli < Formula
  desc "Dig into any bug with full codebase context — zero LLM calls"
  homepage "https://github.com/ratishjain12/dug"
  version "0.1.5"

  on_arm do
    url "https://github.com/ratishjain12/dug/releases/download/v#{version}/dug-macos-arm64"
    sha256 "66d27d9fec8682d2ca00aa87cea3aabdf51c109ed00c0cfa0b83f4e6759d04df"
  end

  def install
    bin.install Dir["dug-macos-*"].first => "dug"
  end

  test do
    system "#{bin}/dug", "--help"
  end
end
