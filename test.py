def print():
    from cffi import FFI
    ffi = FFI()

    ffi.cdef("""
        static void Main();
    """)
    print(ffi.Main())
    #C = 
    #C.Main()
