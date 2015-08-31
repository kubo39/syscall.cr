require "../src/syscall"

include Syscall

str = "Hello!\n"
syscall(WRITE, 1_u64, str.to_unsafe, str.bytesize.to_u64)
