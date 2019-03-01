from distutils.core import setup
from distutils.extension import Extension
from Cython.Build import cythonize

examples_extension = Extension(
    name="isisants",
    sources=["isisants.pyx"],
    libraries=["ants", "n", "ds"],
    library_dirs=["lib"],
    include_dirs=["lib"]
)
setup(
    name="isisants",
    ext_modules=cythonize([examples_extension])
)
