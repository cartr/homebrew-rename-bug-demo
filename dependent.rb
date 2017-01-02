class Dependent < Formula
  desc "A package that depends on somepackage"
  url "http://ftpmirror.gnu.org/hello/hello-2.10.tar.gz"
  sha256 "31e066137a962676e89f69d1b65382de95a7ef7d914b8cb956f41ea72e0f516b"
  
  depends_on "cartr/rename-bug-demo/somepackage"

  def install
    system "touch", "some-file"
    bin.install "some-file"
  end
end
