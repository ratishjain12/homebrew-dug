class DugCli < Formula
  desc "Dig into any bug with full codebase context — zero LLM calls"
  homepage "https://github.com/ratishjain12/dug"
  version "0.1.3"

  on_arm do
    url "https://github.com/ratishjain12/dug/releases/download/v#{version}/dug-macos-arm64"
    sha256 "e4331d4714435fb408c06076f61905acc5b626b0e5d1f58161f15e41707c463d"
  end

  def install
    bin.install Dir["dug-macos-*"].first => "dug"
  end

  test do
    system "#{bin}/dug", "--help"
  end
end
