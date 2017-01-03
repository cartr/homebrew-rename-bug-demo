class Somepackage4 < Formula
  desc "The GNU Hello project, just for testing purposes."
  homepage "https://www.gnu.org/software/hello/"
  url "http://ftpmirror.gnu.org/hello/hello-2.10.tar.gz"
  sha256 "31e066137a962676e89f69d1b65382de95a7ef7d914b8cb956f41ea72e0f516b"
  revision 1

  def install
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--prefix=#{prefix}"
    system "make", "install"
  end
end
