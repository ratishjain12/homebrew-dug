class DugCli < Formula
  desc "Dig into any bug with full codebase context — zero LLM calls"
  homepage "https://github.com/ratishjain12/dug"
  version "0.1.6"

  on_arm do
    url "https://github.com/ratishjain12/dug/releases/download/v#{version}/dug-macos-arm64"
    sha256 "6859d405dc99a3312dc4137c62b800558d08ff02b956b95839bf0c7337b16f16"
  end

  def install
    bin.install Dir["dug-macos-*"].first => "dug"
  end

  test do
    system "#{bin}/dug", "--help"
  end
end
