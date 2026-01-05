class Allscreenshots < Formula
  desc "Capture website screenshots from the command line"
  homepage "https://allscreenshots.com"
  url "https://github.com/allscreenshots/allscreenshots-cli/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "8c6186a184472b3b83c42def32a7a805ac2d68eed64a3d82422c6a3753fb4ea0"
  license "Apache-2.0"
  head "https://github.com/allscreenshots/allscreenshots-cli.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "allscreenshots", shell_output("#{bin}/allscreenshots --version")
  end
end
