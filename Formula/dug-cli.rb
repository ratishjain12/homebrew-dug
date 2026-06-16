class DugCli < Formula
  desc "Dig into any bug with full codebase context — zero LLM calls"
  homepage "https://github.com/ratishjain12/dug"
  version "0.1.0"

  on_arm do
    url "https://github.com/ratishjain12/dug/releases/download/v#{version}/dug-macos-arm64"
    sha256 "1c4fd5a4a542974e4b5823432d45e142d19566006ee7f7228c10a08b7d28a208"
  end

  def install
    bin.install Dir["dug-macos-*"].first => "dug"
  end

  test do
    system "#{bin}/dug", "--help"
  end
end
