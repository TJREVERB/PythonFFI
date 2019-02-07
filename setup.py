from distutils.core import setup
from Cython.Build import cythonize
from distutils.extension import Extension

examples_extension = Extension(
    name="isisants",
    sources=["isisants.pyx"],
    libraries=["examples"]
)
setup(
    name="isisants",
    ext_modules=cythonize([examples_extension])
)
