require 'formula'

class Osname < Formula
  homepage 'https://kimmo.suominen.com/sw/'
  url 'http://oss.gw.com/people/kim/osname-2.0.tar.gz'
  sha1 'cb0058cfd388d3fad226ec04a4e1b332b766e417'

  def install
    system "make"
    bin.install "osname"
    man1.install "osname.1"
  end

  test do
    system "osname", "-a"
  end
end
