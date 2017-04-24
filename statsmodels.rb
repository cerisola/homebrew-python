class Statsmodels < Formula
  desc "Statistical computations and models for Python."
  homepage "http://www.statsmodels.org"
  url "https://github.com/statsmodels/statsmodels/archive/v0.8.0.tar.gz"
  sha256 "4dc5d6a06b97e0fdd4815aa5e894f83d3d50eecd67c445445ffe6cdf37834cf9"

  option "without-python", "Build without python2 support"

  depends_on :python => :recommended if MacOS.version <= :snow_leopard
  depends_on :python3 => :optional

  numpy_options = []
  numpy_options << "with-python3" if build.with? "python3"
  depends_on "numpy" => numpy_options

  resource "patsy" do
    url "https://github.com/pydata/patsy/archive/v0.4.1.tar.gz"
    sha256 "411fed41d318cadd81e4704cbea23413d703743512482fe4e465261a2280c750"
  end

  resource "pandas" do
    url "https://github.com/pandas-dev/pandas/archive/v0.19.2.tar.gz"
    sha256 "af634dd6ed3ca1f8635183f41e7f7769108531ccca8213067d9627857461702e"
  end

  resource "dateutil" do
    url "https://pypi.python.org/packages/51/fc/39a3fbde6864942e8bb24c93663734b74e281b984d1b8c4f95d64b0c21f6/python-dateutil-2.6.0.tar.gz"
    sha256 "62a2f8df3d66f878373fd0072eacf4ee52194ba302e00082828e0d263b0418d2"
  end

  resource "pytz" do
    url "https://files.pythonhosted.org/packages/a4/09/c47e57fc9c7062b4e83b075d418800d322caa87ec0ac21e6308bd3a2d519/pytz-2017.2.zip"
    sha256 "f5c056e8f62d45ba8215e5cb8f50dfccb198b4b9fbea8500674f3443e4689589"
  end

  resource "six" do
    url "https://files.pythonhosted.org/packages/b3/b2/238e2590826bfdd113244a40d9d3eb26918bd798fc187e2360a8367068db/six-1.10.0.tar.gz"
    sha256 "105f8d68616f8248e24bf0e9372ef04d3cc10104f1980f54d57b2ce73a5ad56a"
  end

  resource "Cython" do
    url "https://files.pythonhosted.org/packages/b7/67/7e2a817f9e9c773ee3995c1e15204f5d01c8da71882016cac10342ef031b/Cython-0.25.2.tar.gz"
    sha256 "f141d1f9c27a07b5a93f7dc5339472067e2d7140d1c5a9e20112a5665ca60306"
  end

  def install
    Language::Python.each_python(build) do |python, version|
      bundle_path = libexec/"lib/python#{version}/site-packages"
      bundle_path.mkpath
      ENV.prepend_path "PYTHONPATH", bundle_path

      ENV.prepend_create_path "PYTHONPATH", buildpath/"tools/lib/python#{version}/site-packages"
      resource("Cython").stage do
        system python, *Language::Python.setup_install_args(buildpath/"tools")
      end

      res = resources.map(&:name).to_set - ["Cython"]
      res.each do |r|
        resource(r).stage do
          system python, *Language::Python.setup_install_args(libexec)
        end
      end
      (lib/"python#{version}/site-packages/homebrew-statsmodels-bundle.pth").write "#{bundle_path}\n"

      system python, *Language::Python.setup_install_args(prefix)
    end
  end
end
