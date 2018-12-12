def print():
    from cffi import FFI
    ffi = FFI()
    ffi.cdef("""
        static void Main();
    """)
    C = ffi.verify("""
        static void Main() {
            Console.WriteLine("Hello World!");
        }
    """)
    print(C.Main())
    #C.Main()
