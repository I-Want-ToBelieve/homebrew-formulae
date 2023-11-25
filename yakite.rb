class Yakite < Formula
  desc "A dynamic tiled window management that bridges the gap between yabai and krohnkite"
  homepage "https://github.com/I-Want-ToBelieve/yakite"
  url "https://github.com/I-Want-ToBelieve/yakite/archive/refs/tags/yakite@0.1.9.tar.gz"
  sha256 "cb8e9ffa5e022c9cae9f46def416346c094878431d4e6b3aeb7b73655a07cb1c"
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

# curl -sSL https://github.com/I-Want-ToBelieve/yakite/archive/refs/tags/yakite@0.1.9.tar.gz | shasum -a 256
