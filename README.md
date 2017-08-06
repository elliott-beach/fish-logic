# fish-logic

This plugin replaces the token `&&` with `;and` and `||` with `;or` when you type them in on the command line.
This may be useful, for example, in copy-pasted install scripts that use && to chain commands, or if you are used to bash syntax.

## Install

With [fisherman]

```
fisher e-beach/fish-logic
```

## TODO
[ ] Add demo with asciinema
[ ] prevent quoted expressions like `'&&'` from being expanded.
[ ] Add tests

[fisherman]: https://github.com/fisherman/fisherman
