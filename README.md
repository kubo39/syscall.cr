# syscall.cr [![Build Status](https://secure.travis-ci.org/kubo39/syscall.cr.svg?branch=master)](http://travis-ci.org/kubo39/syscall.cr)

Raw syscall interface for Crystal. Linux/OSX with x86_64 support only.

## Example

```crystal
include Syscall

str = "Hello!\n"
syscall(WRITE, 1_u64, str.to_unsafe, str.bytesize.to_u64)
```
