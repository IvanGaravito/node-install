# node-install

> Node.js binary package installer for Linux systems

## Introduction

This bash script install Node.js from binary package for Linux systems.

## Usage

Just download a Node.js' binary package from [](https://nodejs.org/), then open the terminal and run:

```
# ./node-install.sh <USR|LOCAL> </path/to/node-<version>-<platform>-<arch>.tar.gz>
# node --version
```

First example, imagine you just downloaded `node-v0.12.4-linux-x64.tar.gz` into `~/download`, and want to install it to `/usr/local`, so just type:

```
$ ./node-install.sh LOCAL ~/download/node-v0.12.4-linux-x64.tar.gz
```

Second example, imagine you are logged in as root and want to install `/tmp/node-v0.12.4-linux-x64.tar.gz` to `/usr`, so just type:

```
# ./node-install.sh USR /tmp/node-v0.12.4-linux-x64.tar.gz
```

For Debian/Ubuntu users:

```
$ sudo ./node-install.sh USR /tmp/node-v0.12.4-linux-x64.tar.gz
```

## License 

(The MIT License)

Copyright (c) 2015 Ivan Garavito &lt;ivangaravito@gmail.com&gt;

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
