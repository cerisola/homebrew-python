class Jupyter < Formula
  desc "A language-agnostic web-based interactive shell/notebook server."
  homepage "http://jupyter.org/"
  url "https://pypi.python.org/packages/c9/a9/371d0b8fe37dd231cf4b2cff0a9f0f25e98f3a73c3771742444be27f2944/jupyter-1.0.0.tar.gz"
  sha256 "d9dc4b3318f310e34c82951ea5d6683f67bed7def4b259fafbfe4f1beb1d8e5f"

  option "without-python", "Build without python2 support"

  depends_on :python => :recommended if MacOS.version <= :snow_leopard
  depends_on :python3 => :optional

  depends_on "openssl"
  depends_on "zeromq" => :optional
  depends_on "pandoc" => :optional

  # iPython

  resource "nose" do
    url "https://files.pythonhosted.org/packages/58/a5/0dc93c3ec33f4e281849523a5a913fa1eea9a3068acfa754d44d88107a44/nose-1.3.7.tar.gz"
    sha256 "f1bffef9cbc82628f6e7d7b40d7e255aefaa1adb6a1b1d26c69a8b79e6208a98"
  end

  resource "decorator" do
    url "https://pypi.python.org/packages/cc/ac/5a16f1fc0506ff72fcc8fd4e858e3a1c231f224ab79bb7c4c9b2094cc570/decorator-4.0.11.tar.gz"
    sha256 "953d6bf082b100f43229cf547f4f97f97e970f5ad645ee7601d55ff87afdfe76"
  end

  resource "traitlets" do
    url "https://pypi.python.org/packages/a5/98/7f5ef2fe9e9e071813aaf9cb91d1a732e0a68b6c44a32b38cb8e14c3f069/traitlets-4.3.2.tar.gz"
    sha256 "9c4bd2d267b7153df9152698efb1050a5d84982d3384a37b2c1f7723ba3e7835"
  end

  resource "six" do
    url "https://files.pythonhosted.org/packages/b3/b2/238e2590826bfdd113244a40d9d3eb26918bd798fc187e2360a8367068db/six-1.10.0.tar.gz"
    sha256 "105f8d68616f8248e24bf0e9372ef04d3cc10104f1980f54d57b2ce73a5ad56a"
  end

  resource "Pygments" do
    url "https://pypi.python.org/packages/71/2a/2e4e77803a8bd6408a2903340ac498cb0a2181811af7c9ec92cb70b0308a/Pygments-2.2.0.tar.gz"
    sha256 "dbae1046def0efb574852fab9e90209b23f556367b5a320c0bcb871c77c3e8cc"
  end

  resource "wcwidth" do
    url "https://pypi.python.org/packages/55/11/e4a2bb08bb450fdbd42cc709dd40de4ed2c472cf0ccb9e64af22279c5495/wcwidth-0.1.7.tar.gz"
    sha256 "3df37372226d6e63e1b1e1eda15c594bca98a22d33a23832a90998faa96bc65e"
  end

  resource "prompt_toolkit" do
    url "https://pypi.python.org/packages/23/be/4876b52d5cc159cbd4b0ff6e7aa419a26470849a43a8f647857a4a24467b/prompt_toolkit-1.0.13.tar.gz"
    sha256 "33d68ca09f76cd73287fde7df5748ffacf26a8238dd61ee81ac50860ea7c6776"
  end

  resource "pathlib" do
    url "https://pypi.python.org/packages/ac/aa/9b065a76b9af472437a0059f77e8f962fe350438b927cb80184c32f075eb/pathlib-1.0.1.tar.gz"
    sha256 "6940718dfc3eff4258203ad5021090933e5c04707d5ca8cc9e73c94a7894ea9f"
  end

  resource "pathlib2" do
    url "https://pypi.python.org/packages/ab/d8/ac7489d50146f29d0a14f65545698f4545d8a6b739b24b05859942048b56/pathlib2-2.2.1.tar.gz"
    sha256 "ce9007df617ef6b7bd8a31cd2089ed0c1fed1f7c23cf2bf1ba140b3dd563175d"
  end

  resource "pickleshare" do
    url "https://pypi.python.org/packages/69/fe/dd137d84daa0fd13a709e448138e310d9ea93070620c9db5454e234af525/pickleshare-0.7.4.tar.gz"
    sha256 "84a9257227dfdd6fe1b4be1319096c20eb85ff1e82c7932f36efccfe1b09737b"
  end

  resource "ptyprocess" do
    url "https://pypi.python.org/packages/db/d7/b465161910f3d1cef593c5e002bff67e0384898f597f1a7fdc8db4c02bf6/ptyprocess-0.5.1.tar.gz"
    sha256 "0530ce63a9295bfae7bd06edc02b6aa935619f486f0f1dc0972f516265ee81a6"
  end

  resource "pexpect" do
    url "https://pypi.python.org/packages/e8/13/d0b0599099d6cd23663043a2a0bb7c61e58c6ba359b2656e6fb000ef5b98/pexpect-4.2.1.tar.gz"
    sha256 "3d132465a75b57aa818341c6521392a06cc660feb3988d7f1074f39bd23c9a92"
  end

  resource "dateutil" do
    url "https://pypi.python.org/packages/51/fc/39a3fbde6864942e8bb24c93663734b74e281b984d1b8c4f95d64b0c21f6/python-dateutil-2.6.0.tar.gz"
    sha256 "62a2f8df3d66f878373fd0072eacf4ee52194ba302e00082828e0d263b0418d2"
  end

  resource "appnope" do
    url "https://pypi.python.org/packages/26/34/0f3a5efac31f27fabce64645f8c609de9d925fe2915304d1a40f544cff0e/appnope-0.1.0.tar.gz"
    sha256 "8b995ffe925347a2138d7ac0fe77155e4311a0ea6d6da4f5128fe4b3cbe5ed71"
  end

  resource "simplegeneric" do
    url "https://pypi.python.org/packages/3d/57/4d9c9e3ae9a255cd4e1106bb57e24056d3d0709fc01b2e3e345898e49d5b/simplegeneric-0.8.1.zip"
    sha256 "dc972e06094b9af5b855b3df4a646395e43d1c9d0d39ed345b7393560d0b9173"
  end

  resource "shutil_get_terminal_size" do
    url "https://pypi.python.org/packages/ec/9c/368086faa9c016efce5da3e0e13ba392c9db79e3ab740b763fe28620b18b/backports.shutil_get_terminal_size-1.0.0.tar.gz"
    sha256 "713e7a8228ae80341c70586d1cc0a8caa5207346927e23d09dcbcaf18eadec80"
  end

  resource "ipython_genutils" do
    url "https://pypi.python.org/packages/e8/69/fbeffffc05236398ebfcfb512b6d2511c622871dca1746361006da310399/ipython_genutils-0.2.0.tar.gz"
    sha256 "eb2e116e75ecef9d4d228fdc66af54269afa26ab4463042e33785b887c628ba8"
  end

  resource "ipython" do
    url "https://pypi.python.org/packages/a4/70/d07a28ea595953acacc128a6efe25696be20b2e1d3e3c81ef4b55410b488/ipython-5.3.0.tar.gz"
    sha256 "bf5e615e7d96dac5a61fbf98d9e2926d98aa55582681bea7e9382992a3f43c1d"
  end

  # jupyter

  resource "jsonschema" do
    url "https://pypi.python.org/packages/58/b9/171dbb07e18c6346090a37f03c7e74410a1a56123f847efed59af260a298/jsonschema-2.6.0.tar.gz"
    sha256 "6ff5f3180870836cae40f06fa10419f557208175f13ad7bc26caa77beb1f6e02"
  end

  resource "jupyter_core" do
    url "https://pypi.python.org/packages/2f/39/5138f975100ce14d150938df48a83cd852a3fd8e24b1244f4113848e69e2/jupyter_core-4.3.0.tar.gz"
    sha256 "a96b129e1641425bf057c3d46f4f44adce747a7d60107e8ad771045c36514d40"
  end

  resource "nbformat" do
    url "https://pypi.python.org/packages/f9/c5/89df4abf906f766727f976e170caa85b4f1c1d1feb1f45d716016e68e19f/nbformat-4.3.0.tar.gz"
    sha256 "5febcce872672f1c97569e89323992bdcb8573fdad703f835e6521253191478b"
  end

  resource "mistune" do
    url "https://github.com/lepture/mistune/archive/v0.7.4.tar.gz"
    sha256 "5030d5e3e0ec90fbdaed0f52d3c756ffb30e4ab46c3de159c97482c09569abcb"
  end

  resource "pyzmq" do
    url "https://pypi.python.org/packages/af/37/8e0bf3800823bc247c36715a52e924e8f8fd5d1432f04b44b8cd7a5d7e55/pyzmq-16.0.2.tar.gz"
    sha256 "0322543fff5ab6f87d11a8a099c4c07dd8a1719040084b6ce9162bcdf5c45c9d"
  end

  resource "jupyter_client" do
    url "https://github.com/jupyter/jupyter_client/archive/5.0.0.tar.gz"
    sha256 "1f1bbed740911de0510e07807bad6a6ebd3c1688522316c9e9efddb74f99e51e"
  end

  resource "notebook" do
    url "https://github.com/jupyter/notebook/archive/4.4.0.tar.gz"
    sha256 "807b83893639895f506a21c44b8b2252c20472500a8b896979e052987c7a01cc"
  end

  resource "widgetsnbextension" do
    url "https://pypi.python.org/packages/0a/09/083dbdbd6ba52004d6ee880877a7b3f6143f389743d20057e1eda3af3582/widgetsnbextension-2.0.0.tar.gz"
    sha256 "566582a84642d0c0f78b756a954450a38a8743eeb8dad04b7cab3ca66f455e6f"
  end

  resource "ipywidgets" do
    url "https://pypi.python.org/packages/99/26/daf5c44c8b2a4cbe80b4cafced8cc2c3c2a4b8f035e4ef53b037f47e8897/ipywidgets-6.0.0.tar.gz"
    sha256 "afa6248850cff14ef86117db87aeab0b12237e4eaf740e73716460ed593a43a7"
  end

  resource "ipykernel" do
    url "https://pypi.python.org/packages/2d/1b/eee47b5cd8b2fcdde587cad1e8d3f7eae7bdfa1d36a94ad316fc5fbee833/ipykernel-4.5.2.tar.gz"
    sha256 "5a54f25f0e6c8ee74c362c23f9a95e10e74c6b7f5ef42059c861ff6f26d89462"
  end

  resource "markupsafe" do
    url "https://pypi.python.org/packages/4d/de/32d741db316d8fdb7680822dd37001ef7a448255de9699ab4bfcbdf4172b/MarkupSafe-1.0.tar.gz"
    sha256 "a6be69091dac236ea9c6bc7d012beab42010fa914c459791d627dad4910eb665"
  end

  resource "jinja" do
    url "https://pypi.python.org/packages/71/59/d7423bd5e7ddaf3a1ce299ab4490e9044e8dfd195420fc83a24de9e60726/Jinja2-2.9.5.tar.gz"
    sha256 "702a24d992f856fa8d5a7a36db6128198d0c21e1da34448ca236c42e92384825"
  end

  resource "jupyter_console" do
    url "https://pypi.python.org/packages/cb/83/f96e41ddb29ad76f806d6412e87e64af3120482dc0d8b5decf5eb8d82b99/jupyter_console-5.1.0.tar.gz"
    sha256 "d0b4ae4dfe070be1e9d5690fa819328acffb5f37a8ef3baa1c7e3b77b443cfd7"
  end

  # tornado

  resource "pycurl" do
    url "https://pypi.python.org/packages/12/3f/557356b60d8e59a1cce62ffc07ecc03e4f8a202c86adae34d895826281fb/pycurl-7.43.0.tar.gz"
    sha256 "aa975c19b79b6aa6c0518c0cc2ae33528900478f0b500531dbcdbf05beec584c"
  end

  resource "constantly" do
    url "https://pypi.python.org/packages/95/f1/207a0a478c4bb34b1b49d5915e2db574cadc415c9ac3a7ef17e29b2e8951/constantly-15.1.0.tar.gz"
    sha256 "586372eb92059873e29eba4f9dec8381541b4d3834660707faf8ba59146dfc35"
  end

  resource "click" do
    url "https://pypi.python.org/packages/95/d9/c3336b6b5711c3ab9d1d3a80f1a3e2afeb9d8c02a7166462f6cc96570897/click-6.7.tar.gz"
    sha256 "f15516df478d5a56180fbf80e68f206010e6d160fc39fa508b65e035fd75130b"
  end

  resource "incremental" do
    url "https://pypi.python.org/packages/da/b0/32233c9e84b0d44b39015fba8fec03e88053723c1b455925081dc6ccd9e7/incremental-16.10.1.tar.gz"
    sha256 "14ad6b720ec47aad6c9caa83e47db1843e2b9b98742da5dda08e16a99f400342"
  end

  resource "zope-interface" do
    url "https://pypi.python.org/packages/44/af/cea1e18bc0d3be0e0824762d3236f0e61088eeed75287e7b854d65ec9916/zope.interface-4.3.3.tar.gz"
    sha256 "8780ef68ca8c3fe1abb30c058a59015129d6e04a6b02c2e56b9c7de6078dfa88"
  end

  resource "idna" do
    url "https://pypi.python.org/packages/d8/82/28a51052215014efc07feac7330ed758702fc0581347098a81699b5281cb/idna-2.5.tar.gz"
    sha256 "3cb5ce08046c4e3a560fc02f138d0ac63e00f8ce5901a56b32ec8b7994082aab"
  end

  resource "certifi" do
    url "https://pypi.python.org/packages/b6/fa/ca682d5ace0700008d246664e50db8d095d23750bb212c0086305450c276/certifi-2017.1.23.tar.gz"
    sha256 "81877fb7ac126e9215dfb15bfef7115fdc30e798e0013065158eed0707fd99ce"
  end

  resource "hpack" do
    url "https://pypi.python.org/packages/7b/24/3e84d3650f719b9cabc5f125c270713c2239650cdf8296dfd77485051573/hpack-2.3.0.tar.gz"
    sha256 "51bd9aa8151efd190d70fe87991b1e3b79be0f93f0e34088fba2a8d34877a0a9"
  end

  resource "hyperframe" do
    url "https://pypi.python.org/packages/5e/a2/36e98b0cb9a0283cd33c31e84ab6099b93e76c94c7020b8a130a31700faf/hyperframe-5.0.0.tar.gz"
    sha256 "b886c7f25dab2e39a95cc01741c56755d11092abbcf33a6e60c465206f6ae7ec"
  end

  resource "enum34" do # python 2 only !
    url "https://pypi.python.org/packages/bf/3e/31d502c25302814a7c2f1d3959d2a3b3f78e509002ba91aea64993936876/enum34-1.1.6.tar.gz"
    sha256 "8ad8c4783bf61ded74527bffb48ed9b54166685e4230386a9ed9b1279e2df5b1"
  end

  resource "h2" do
    url "https://pypi.python.org/packages/ad/5d/c3015afe621924f7ec5f645476780fef3ac1d32cd256ce2705b50c152026/h2-2.6.1.tar.gz"
    sha256 "30de3fbfc0517522a84bfa3f68be1e390885ffa82849ca9bf2be4d6ee3ad88d0"
  end

  resource "asn1crypto" do
    url "https://pypi.python.org/packages/67/14/5d66588868c4304f804ebaff9397255f6ec5559e46724c2496e0f26e68d6/asn1crypto-0.22.0.tar.gz"
    sha256 "cbbadd640d3165ab24b06ef25d1dca09a3441611ac15f6a6b452474fdf0aed1a"
  end

  resource "ply" do
    url "https://pypi.python.org/packages/ce/3d/1f9ca69192025046f02a02ffc61bfbac2731aab06325a218370fd93e18df/ply-3.10.tar.gz"
    sha256 "96e94af7dd7031d8d6dd6e2a8e0de593b511c211a86e28a9c9621c275ac8bacb"
  end

  resource "pycparser" do
    url "https://pypi.python.org/packages/be/64/1bb257ffb17d01f4a38d7ce686809a736837ad4371bcc5c42ba7a715c3ac/pycparser-2.17.tar.gz"
    sha256 "0aac31e917c24cb3357f5a4d5566f2cc91a19ca41862f6c3c22dc60a629673b6"
  end

  resource "cffi" do
    url "https://pypi.python.org/packages/a1/32/e3d6c3a8b5461b903651dd6ce958ed03c093d2e00128e3f33ea69f1d7965/cffi-1.9.1.tar.gz"
    sha256 "563e0bd53fda03c151573217b3a49b3abad8813de9dd0632e10090f6190fdaf8"
  end

  resource "pyasn1" do
    url "https://pypi.python.org/packages/69/17/eec927b7604d2663fef82204578a0056e11e0fc08d485fdb3b6199d9b590/pyasn1-0.2.3.tar.gz"
    sha256 "738c4ebd88a718e700ee35c8d129acce2286542daa80a82823a7073644f706ad"
  end

  resource "ipaddress" do # python 2 only ? (yep)
    url "https://pypi.python.org/packages/4e/13/774faf38b445d0b3a844b65747175b2e0500164b7c28d78e34987a5bfe06/ipaddress-1.0.18.tar.gz"
    sha256 "5d8534c8e185f2d8a1fda1ef73f2c8f4b23264e8e30063feeb9511d492a413e1"
  end

  resource "cryptography" do
    url "https://pypi.python.org/packages/ec/5f/d5bc241d06665eed93cd8d3aa7198024ce7833af7a67f6dc92df94e00588/cryptography-1.8.1.tar.gz"
    sha256 "323524312bb467565ebca7e50c8ae5e9674e544951d28a2904a50012a8828190"
  end

  resource "pyopenssl" do
    url "https://pypi.python.org/packages/0c/d6/b1fe519846a21614fa4f8233361574eddb223e0bc36b182140d916acfb3b/pyOpenSSL-16.2.0.tar.gz"
    sha256 "7779a3bbb74e79db234af6a08775568c6769b5821faecf6e2f4143edb227516e"
  end

  resource "attrs" do
    url "https://pypi.python.org/packages/01/b0/3ac73bf6df716a38568a16f6a9cbc46cc9e8ed6fe30c8768260030db55d4/attrs-16.3.0.tar.gz"
    sha256 "80203177723e36f3bbe15aa8553da6e80d47bfe53647220ccaa9ad7a5e473ccc"
  end

  resource "pyasn1-modules" do
    url "https://pypi.python.org/packages/60/32/7703bccdba05998e4ff04db5038a6695a93bedc45dcf491724b85b5db76a/pyasn1-modules-0.0.8.tar.gz"
    sha256 "10561934f1829bcc455c7ecdcdacdb4be5ffd3696f26f468eb6eb41e107f3837"
  end

  resource "service-identity" do
    url "https://pypi.python.org/packages/f3/2a/7c04e7ab74f9f2be026745a9ffa81fd9d56139fa6f5f4b4c8a8c07b2bfba/service_identity-16.0.0.tar.gz"
    sha256 "0630e222f59f91f3db498be46b1d879ff220955d7bbad719a5cb9ad14e3c3036"
  end

  resource "twisted" do
    url "https://pypi.python.org/packages/d2/5d/ed5071740be94da625535f4333793d6fd238f9012f0fee189d0c5d00bd74/Twisted-17.1.0.tar.bz2"
    sha256 "dbf211d70afe5b4442e3933ff01859533eba9f13d8b3e2e1b97dc2125e2d44dc"
  end

  resource "tornado" do
    url "https://pypi.python.org/packages/1e/7c/ea047f7bbd1ff22a7f69fe55e7561040e3e54d6f31da6267ef9748321f98/tornado-4.4.2.tar.gz"
    sha256 "2898f992f898cd41eeb8d53b6df75495f2f423b6672890aadaf196ea1448edcc"
  end

  resource "terminado" do
    url "https://pypi.python.org/packages/58/59/aabe84fce2f45da10165435cec204d982863e176f6849a4a4fe2652a20a8/terminado-0.6.tar.gz"
    sha256 "2c0ba1f624067dccaaead7d2247cfe029806355cef124dc2ccb53c83229f0126"
  end

  # nbconvert

  resource "testpath" do
    #url "https://github.com/jupyter/testpath/archive/0.3.tar.gz"
    #sha256 "01cc3cd59a59d42b238252774b9ebfc9d2af1d0d9bac81d7801409f570b1cda5"
    url "https://pypi.python.org/packages/fe/53/301852a341e1f5cc82f9987d28595fb04ef2d9869a4efa2d379d207b2b77/testpath-0.3-py2.py3-none-any.whl"
    sha256 "f16b2cb3b03e1ada4fb0200b265a4446f92f3ba4b9d88ace34f51c54ab6d294e"
  end

  resource "pandocfilters" do
    url "https://pypi.python.org/packages/e3/1f/21d1b7e8ca571e80b796c758d361fdf5554335ff138158654684bc5401d8/pandocfilters-1.4.1.tar.gz"
    sha256 "ec8bcd100d081db092c57f93462b1861bcfa1286ef126f34da5cb1d969538acd"
  end

  resource "entrypoints" do
    #url "https://github.com/takluyver/entrypoints/archive/0.2.2.tar.gz"
    #sha256 "e54b5df8bb971507278c65df96e6486cf4aea0cdac384d0102ea0339e0a4f82b"
    url "https://pypi.python.org/packages/f8/ad/0e77a853c745a15981ab51fa9a0cb4eca7a7a007b4c1970106ee6ba01e0c/entrypoints-0.2.2-py2.py3-none-any.whl"
    sha256 "0a0685962ee5ac303f470acbb659f0f97aef5b9deb6b85d059691c706ef6e45e"
  end

  resource "webencodings" do
    url "https://pypi.python.org/packages/c3/e5/74d05eed73b09752ac3dc4a8a69ae92ffa1ce92fcb03eaa624d1fcd17e33/webencodings-0.5.tar.gz"
    sha256 "a5c55ee93b24e740fe951c37b5c228dccc1f171450e188555a775261cce1b904"
  end

  resource "html5lib" do
    url "https://pypi.python.org/packages/17/ee/99e69cdcefc354e0c18ff2cc60aeeb5bfcc2e33f051bf0cc5526d790c445/html5lib-0.999999999.tar.gz"
    sha256 "ee747c0ffd3028d2722061936b5c65ee4fe13c8e4613519b4447123fc4546298"
  end

  resource "bleach" do
    url "https://pypi.python.org/packages/1e/67/2562affb99e194cb4b0c0b88e661650d065fcf452d1108116a9530ed9cad/bleach-2.0.0.tar.gz"
    sha256 "b9522130003e4caedf4f00a39c120a906dcd4242329c1c8f621f5370203cbc30"
  end

  resource "nbconvert" do
    url "https://pypi.python.org/packages/95/58/df1c91f1658ee5df19097f915a1e71c91fc824a708d82d2b2e35f8b80e9a/nbconvert-5.1.1.tar.gz"
    sha256 "847731bc39829d0eb1e15a450ac98c71730e3598e53683d4d76a3f3b3fc5017d"
  end

  def install
    ENV.prepend_create_path "PATH", "/Users/federicocerisola/bin/node.js/node-v7.7.3-darwin-x64/bin"

    Language::Python.each_python(build) do |python, version|
      bundle_path = libexec/"lib/python#{version}/site-packages"
      bundle_path.mkpath
      ENV.prepend_path "PYTHONPATH", bundle_path

      res = if version.to_s.start_with? "2"
        resources.map(&:name).to_set - ["testpath", "entrypoints"]
      else
        resources.map(&:name).to_set - ["testpath", "entrypoints", "enum34", "ipaddress", "pathlib2", "shutil_get_terminal_size"]
      end
      res.each do |r|
        resource(r).stage do
          system python, *Language::Python.setup_install_args(libexec)
        end
      end
      resource("testpath").stage do
        chmod_R "ugo=r", Dir.glob("./testpath-0.3.dist-info/*")
        bundle_path.install Dir["testpath"]
        bundle_path.install Dir["testpath-0.3.dist-info"]
      end
      resource("entrypoints").stage do
        chmod_R "ugo=r", Dir.glob("./entrypoints-0.2.2.dist-info/*")
        bundle_path.install "entrypoints.py"
        bundle_path.install Dir["entrypoints-0.2.2.dist-info"]
      end
      (lib/"python#{version}/site-packages/homebrew-jupyter-bundle.pth").write "#{bundle_path}\n"

      system python, *Language::Python.setup_install_args(prefix)
    end

    %w[jupyter jupyter-console jupyter-kernelspec jupyter-migrate jupyter-nbconvert
       jupyter-nbextension jupyter-notebook jupyter-run jupyter-serverextension
       jupyter-troubleshoot jupyter-trust ipython].each do |s|
      bin.install_symlink libexec/"bin/#{s}"
    end
    if not build.without? "python"
      bin.install_symlink libexec/"bin/ipython2"
    end
    if build.with? "python3"
      bin.install_symlink libexec/"bin/ipython3"
    end
  end
end

