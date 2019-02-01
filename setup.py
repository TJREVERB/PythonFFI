from distutils.core import setup
from distutils.extension import Extension
from Cython.Build import cythonize

examples_extension = Extension(
    name="isis-ants",
    sources=["isis-ants.pyx"],
    libraries=["ants"],
    library_dirs=["lib"],
    include_dirs=["lib"]
)
setup(
    name="isis-ants",
    ext_modules=cythonize([examples_extension])
)
