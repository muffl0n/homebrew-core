require "language/node"

class Stepci < Formula
  desc "API Testing and Monitoring made simple"
  homepage "https://stepci.com"
  url "https://registry.npmjs.org/stepci/-/stepci-2.1.0.tgz"
  sha256 "bcc265995c0539944c9739fb192874326bceba9a4d928111455880538620c72a"
  license "MPL-2.0"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert true
  end
end
