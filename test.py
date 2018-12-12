def print():
    from cffi import FFI
    ffi = FFI()

    ffi.cdef("""
        static void Main();
    """)
    print(ffi.new())
    #C = 
    #C.Main()
