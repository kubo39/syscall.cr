require "./nr"

module Syscall
  def syscall(n : UInt64) : UInt64
    dst = 0_u64
    asm("syscall" : "={rax}"(dst)
        : "{rax}"(n)
        : "rcx", "r11", "memory"
        : "volatile")
    dst
  end

  def syscall(n, arg1 : UInt64) : UInt64
    dst = 0_u64
    asm("syscall" : "={rax}"(dst)
        : "{rax}"(n), "{rdi}"(arg1)
        : "rcx", "r11", "memory"
        : "volatile")
    dst
  end

  def syscall(n, arg1, arg2 : UInt64) : UInt64
    dst = 0_u64
    asm("syscall" : "={rax}"(dst)
        : "{rax}"(n), "{rdi}"(arg1), "{rsi}"(arg2)
        : "rcx", "r11", "memory"
        : "volatile")
    dst
  end

  def syscall(n, arg1, arg2, arg3 : UInt64) : UInt64
    dst = 0_u64
    asm("syscall" : "={rax}"(dst)
        : "{rax}"(n), "{rdi}"(arg1), "{rsi}"(arg2), "{rdx}"(arg3)
        : "rcx", "r11", "memory"
        : "volatile")
    return dst
  end

  def syscall(n, arg1, arg2, arg3, arg4 : UInt64) : UInt64
    dst = 0_u64
    asm("syscall" : "={rax}"(dst)
        : "{rax}"(n), "{rdi}"(arg1), "{rsi}"(arg2), "{rdx}"(arg3),
          "{r10}"(arg4)
        : "rcx", "r11", "memory"
        : "volatile")
    return dst
  end

  def syscall(n, arg1, arg2, arg3, arg4, arg5 : UInt64) : UInt64
    dst = 0_u64
    asm("syscall" : "={rax}"(dst)
        : "{rax}"(n), "{rdi}"(arg1), "{rsi}"(arg2), "{rdx}"(arg3),
          "{r10}"(arg4), "{r8}"(arg5)
        : "rcx", "r11", "memory"
        : "volatile")
    return dst
  end

  def syscall(n, arg1, arg2, arg3, arg4, arg5, arg6 : UInt64) : UInt64
    dst = 0_u64
    asm("syscall" : "={rax}"(dst)
        : "{rax}"(n), "{rdi}"(arg1), "{rsi}"(arg2), "{rdx}"(arg3),
          "{r10}"(arg4), "{r8}"(arg5), "{r9}"(arg6)
        : "rcx", "r11", "memory"
        : "volatile")
    return dst
  end
end
