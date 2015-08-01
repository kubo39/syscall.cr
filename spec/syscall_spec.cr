require "./spec_helper"

assert { syscall(GETPID) == Process.pid }
