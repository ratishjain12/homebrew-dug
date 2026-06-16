class DugCli < Formula
  desc "Dig into any bug with full codebase context — zero LLM calls"
  homepage "https://github.com/ratishjain12/dug"
  version "0.1.2"

  on_arm do
    url "https://github.com/ratishjain12/dug/releases/download/v#{version}/dug-macos-arm64"
    sha256 "25fca315ff7ef61b9c18dbf4aa1e32d196dec5155936e59594e5d42d66ea08e7"
  end

  def install
    bin.install Dir["dug-macos-*"].first => "dug"
  end

  test do
    system "#{bin}/dug", "--help"
  end
end
