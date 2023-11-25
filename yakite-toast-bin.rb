class YakiteToastBin < Formula
  desc "A cli program that displays a toast window containing the current layout information when the yakite layout changes"
  homepage "https://github.com/I-Want-ToBelieve/yakite"
  url "https://github.com/I-Want-ToBelieve/yakite/releases/download/yakite-toast%400.1.8/yakite-toast"
  sha256 "b6b79e53acab8dc6be90c0104bdda3f272e9742da35ab797f2e45e44824d75df"
  version "0.1.8"
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

# curl -sSL https://github.com/I-Want-ToBelieve/yakite/releases/download/yakite-toast%400.1.8/yakite-toast | shasum -a 256
