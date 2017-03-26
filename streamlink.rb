class Streamlink < Formula
  desc "Streamlink is command-line utility that extracts streams from various services and pipes them into a video player of choice."
  homepage "https://streamlink.github.io/"
  url "https://github.com/streamlink/streamlink/releases/download/0.4.0/streamlink-0.4.0.tar.gz"
  sha256 "a7547382f08a92f0714394a4c3c5f601aae3555d0706147f3858acdc6ed04abb"

  #option "without-python", "Build without python2 support"
  #depends_on :python => :recommended if MacOS.version <= :snow_leopard
  #depends_on :python3 => :optional
  depends_on :python3

  depends_on "openssl"

  resource "idna" do
    url "https://pypi.python.org/packages/d8/82/28a51052215014efc07feac7330ed758702fc0581347098a81699b5281cb/idna-2.5.tar.gz"
    sha256 "3cb5ce08046c4e3a560fc02f138d0ac63e00f8ce5901a56b32ec8b7994082aab"
  end

  resource "six" do
    url "https://files.pythonhosted.org/packages/b3/b2/238e2590826bfdd113244a40d9d3eb26918bd798fc187e2360a8367068db/six-1.10.0.tar.gz"
    sha256 "105f8d68616f8248e24bf0e9372ef04d3cc10104f1980f54d57b2ce73a5ad56a"
  end

  resource "cryptography" do
    url "https://pypi.python.org/packages/ec/5f/d5bc241d06665eed93cd8d3aa7198024ce7833af7a67f6dc92df94e00588/cryptography-1.8.1.tar.gz"
    sha256 "323524312bb467565ebca7e50c8ae5e9674e544951d28a2904a50012a8828190"
  end

  resource "pyopenssl" do
    url "https://pypi.python.org/packages/0c/d6/b1fe519846a21614fa4f8233361574eddb223e0bc36b182140d916acfb3b/pyOpenSSL-16.2.0.tar.gz"
    sha256 "7779a3bbb74e79db234af6a08775568c6769b5821faecf6e2f4143edb227516e"
  end

  resource "certifi" do
    url "https://pypi.python.org/packages/b6/fa/ca682d5ace0700008d246664e50db8d095d23750bb212c0086305450c276/certifi-2017.1.23.tar.gz"
    sha256 "81877fb7ac126e9215dfb15bfef7115fdc30e798e0013065158eed0707fd99ce"
  end

  resource "requests" do
    url "https://pypi.python.org/packages/16/09/37b69de7c924d318e51ece1c4ceb679bf93be9d05973bb30c35babd596e2/requests-2.13.0.tar.gz"
    sha256 "5722cd09762faa01276230270ff16af7acf7c5c45d623868d9ba116f15791ce8"
  end

  resource "iso3166" do
    url "https://pypi.python.org/packages/46/06/64145b8d6be8474db1f09f6b01a083921c11a4c979d029677c7e943d2433/iso3166-0.8.tar.gz"
    sha256 "fbeb17bed90d15b1f6d6794aa2ea458e5e273a1d29b6f4939423c97640e14933"
  end

  resource "iso-639" do
    url "https://pypi.python.org/packages/5a/8d/27969852f4e664525c3d070e44b2b719bc195f4d18c311c52e57bb93614e/iso-639-0.4.5.tar.gz"
    sha256 "dc9cd4b880b898d774c47fe9775167404af8a85dd889d58f9008035109acce49"
  end

  resource "cryptodome" do
    url "https://pypi.python.org/packages/45/ca/f0c2ca6c65084d60f68553cf072de7db0d918c7bb07ece88781f6af24625/pycryptodome-3.4.5.tar.gz"
    sha256 "be84544eadc2bb71d4ace39e4984ed2990111f053f24267a07afb4b4e1e5428f"
  end


  def install
    ENV.prepend_create_path "PYTHONPATH", libexec/"lib/python3.6/site-packages"
    resources.each do |r|
      r.stage do
        system "python3", *Language::Python.setup_install_args(libexec)
      end
    end

    system "python3", *Language::Python.setup_install_args(libexec)

    bin.install Dir[libexec/"bin/*"]
    bin.env_script_all_files(libexec/"bin", :PYTHONPATH => ENV["PYTHONPATH"])
  end
end

