class YakiteToast < Formula
  desc "A cli program that displays a toast window containing the current layout information when the yakite layout changes"
  homepage "https://github.com/I-Want-ToBelieve/yakite"
  url "https://github.com/I-Want-ToBelieve/yakite/archive/refs/tags/yakite-toast@0.1.8.tar.gz"
  sha256 "9d4be59a1a01d2bf5bc2c9e29afe069953fdfde1d171abde535f88fe9103d19e"
  version "0.1.8"
  license "MIT"

  depends_on :macos

  conflicts_with "yakite-toast-bin", because: "both install a `yakite-toast` binary"

  def install
    Dir.chdir("./apps/yakite-toast") do
      system "/usr/bin/clang", "-framework", "Cocoa", "./src/yakite-toast.m", "-o", "yakite-toast"
      bin.install "yakite-toast"
    end
  end

  test do
    system "#{bin}/yakite-toast", "--version"
  end
end

# curl -sSL https://github.com/I-Want-ToBelieve/yakite/archive/refs/tags/yakite-toast@0.1.8.tar.gz | shasum -a 256
