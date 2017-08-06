# fish-logic

This plugin replaces the characters && with ';and' and || with ';or' as you type them in.
This may be useful, for example, in copy-pasted install scripts that use && to chain commands.
It will not affect fish scripts.

## Install

With [fisherman]

```
fisher e-beach/fish-logic
```


```fish
fish-logic
```

## TODO
[ ] prevent expansion when && is within a quoted expression.
[ ] Add tests
[ ] Add demo with asciinema

[fisherman]: https://github.com/fisherman/fisherman
