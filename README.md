translite
=========

Replaces non-ASCII characters with an ASCII approximation.

Usage
-----

Default approximations are provided for _Western/Latin_ characters
(e.g. “ø”, “ñ”, “é”).

```ruby
require "translite"

Translite.transliterate("Ærøskøbing")
# => AEroskobing
```

If none approximation is found, it ignores it by default. A replacement
can be passed as a second argument.

```ruby
Translite.transliterate(string, "?")
```

Installation
------------

```
$ gem install translite
```
