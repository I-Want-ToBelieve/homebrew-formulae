class YakiteToast < Formula
  desc "A cli program that displays a toast window containing the current layout information when the yakite layout changes"
  homepage "https://github.com/I-Want-ToBelieve/yakite"
  url "https://github.com/I-Want-ToBelieve/yakite/archive/refs/tags/yakite-toast@0.1.9.tar.gz"
  sha256 "03106220690c810cb542461734d61bdbe059f33e00b38a08d65018187f735a25"
  version "0.1.9"
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

# curl -sSL https://github.com/I-Want-ToBelieve/yakite/archive/refs/tags/yakite-toast@0.1.9.tar.gz | shasum -a 256
