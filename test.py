def print():
    from cffi import FFI
    ffi = FFI()

    ffi.cdef("""
        static void Main();
    """)
    C = ffi.dlopen(core.c)
    C.Main()
