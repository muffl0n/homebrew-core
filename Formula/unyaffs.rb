class Unyaffs < Formula
  desc "Extract files from a YAFFS2 filesystem image"
  homepage "https://git.b-ehlers.de/ehlers/unyaffs/"
  url "https://git.b-ehlers.de/ehlers/unyaffs/archive/0.9.7.tar.gz"
  sha256 "792d18c3866910e25026aaa9dcfdec4b67bca7453ce5b2474d1ce8e9d31b2c69"
  license "GPL-2.0-only"
  head "https://git.b-ehlers.de/ehlers/unyaffs.git"

  bottle do
    cellar :any_skip_relocation
    rebuild 2
    sha256 "4bcff00c990f1376a4a14084a7e4c5c47a9abd1411140071a8f32820b24bc0c3" => :catalina
    sha256 "9ffaad154e3119644c754d02544e386f9d5b6f7d06aceba76e972cb321608deb" => :mojave
    sha256 "c215b5e405c842ca4a82dc120b8a3c9b9a1868303ab740d4d8973b1cd0160eb9" => :high_sierra
  end

  def install
    system "make"
    bin.install "unyaffs"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/unyaffs -V")
  end
end
