require "../src/syscall"

include Syscall

b = "Hello!\n".bytes
syscall(WRITE, 1_u64, b.buffer.address, b.size.to_u64)
