# About #

go-qtc is a simple nodejs package that bundles binary versions of
[qtc](https://github.com/valyala/quicktemplate). The version of qtc made
available in this package supports {% end %} tag syntax, and thus is not the
default qtc binary. Binary versions of qtc for Linux and OS X (darwin) are
included in this package.

This package is useful when you need to compile qtc templates into Go code and
a full go environment may not be available (such as on a build host, or cloud
vm, container, etc.). go-qtc is most useful for use with automated Gulp or
Grunt builds.

## Installation ##

Install package via npm:

```bash
npm install --save go-qtc
```

## Using ##

The package exports only one function, that when run executes the included
binary (respective to platform), and passes the supplied parameters and paths
to the executable.

The parameters are the same as supported by the qtc binary, and the
return value is an object (the same as returned by
[child\_process.spawnSync](https://nodejs.org/api/child_process.html#child_process_child_process_spawnsync_command_args_options)).

For example:
```javascript
#!/usr/bin/env node

var qtc = require('go-qtc');

qtc({
  "dir": "/path/to/dir",
  "ext": "html",
  "file": "/path/to/file", // if set, dir and ext are ignored by qtc
});
```
