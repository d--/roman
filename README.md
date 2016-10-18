Build
-----
On Ubuntu 14.04:

```bash
./configure
make
make check
```

About
-----
The project is split into two pieces: conversion library and calculator.

The API requires you to pass a pointer to an output buffer that is large
enough to hold the result of a calculation.  Since the maximum roman numeral
string by length is "MMMDCCCLXXXVIII" a buffer size of **16** should always be
sufficient.

This is done so that the user of the library manages their own memory. I could
have created a struct or typedef with a fixed array size to make the contract
simpler, but this seemed like more work than it was worth.

