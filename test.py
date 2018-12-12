def print():
    from cffi import FFI
    ffi = FFI()
    ffi.cdef("""
        static void Main(void);
    """)
    #C = 
    #C.Main()
