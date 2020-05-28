require 'formula'

class Osname < Formula
  homepage 'https://kimmo.suominen.com/sw/'
  url 'http://oss.gw.com/people/kim/osname-2.0.tar.gz'
  sha256 'c935eb43861dbb4a9d5b2af8faa711d65792990044113657150106fda616f401'

  def install
    system "make"
    bin.install "osname"
    man1.install "osname.1"
  end

  test do
    system "osname", "-a"
  end
end
