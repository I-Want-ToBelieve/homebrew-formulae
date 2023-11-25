class YakiteToastBin < Formula
  desc "A cli program that displays a toast window containing the current layout information when the yakite layout changes"
  homepage "https://github.com/I-Want-ToBelieve/yakite"
  url "https://github.com/I-Want-ToBelieve/yakite/releases/download/yakite-toast%400.1.9/yakite-toast"
  sha256 "0f96bfb6df2fedd4e5870658f3dae2542e9d23a370b1c895f368f9e3fe998670"
  version "0.1.9"
  license "MIT"

  depends_on :macos

  conflicts_with "yakite-toast", because: "both install a `yakite-toast` binary"

  def install
    bin.install "yakite-toast"
  end

  test do
    system "#{bin}/yakite-toast", "--version"
  end
end

# curl -sSL https://github.com/I-Want-ToBelieve/yakite/releases/download/yakite-toast%400.1.9/yakite-toast | shasum -a 256
