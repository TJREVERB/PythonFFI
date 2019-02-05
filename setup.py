from distutils.core import setup
from distutils.extension import Extension
from Cython.Build import cythonize

examples_extension = Extension(
    name="isisants",
    sources=["isisants.pyx"],
    libraries=["examples"],
)
setup(
    name="isisants",
    ext_modules=cythonize([examples_extension])
)
