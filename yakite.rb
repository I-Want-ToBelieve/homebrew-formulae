class Yakite < Formula
  desc "A dynamic tiled window management that bridges the gap between yabai and krohnkite"
  homepage "https://github.com/I-Want-ToBelieve/yakite"
  url "https://github.com/I-Want-ToBelieve/yakite/archive/refs/tags/yakite@0.1.8.tar.gz"
  sha256 "b82b3a3cc87b5bc3de37f630051200422c93f55d4e6304b4f9e12a1f8ad8002e"
  license "MIT"

  depends_on :macos
  depends_on "rust" => :build

  def install
    Dir.chdir("./apps/yakite") do
      system "cargo", "install", *std_cargo_args
    end
  end

  test do
    system "#{bin}/yakite", "--version"
  end
end

# curl -sSL https://github.com/I-Want-ToBelieve/yakite/archive/refs/tags/yakite@0.1.8.tar.gz | shasum -a 256
