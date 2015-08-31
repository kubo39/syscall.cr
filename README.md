# syscall.cr [![Build Status](https://secure.travis-ci.org/kubo39/syscall.cr.png?branch=master)](http://travis-ci.org/kubo39/syscall.cr)

Raw syscall interface for Crystal.

## Prerequirement

* Crystal Compiler >= 0.7.6
* Linux/OSX with x86_64 support only.

## Example

```crystal
include Syscall

str = "Hello!\n"
syscall(WRITE, 1_u64, str.to_unsafe, str.bytesize.to_u64)
```
