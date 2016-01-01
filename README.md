Translite [![Build Status](https://travis-ci.org/frodsan/translite.svg)](https://travis-ci.org/frodsan/translite)
=========

Replaces non-ASCII characters with an ASCII approximation.

Installation
------------

Add this line to your application's Gemfile:

```ruby
gem "translite"
```

And then execute:

```
$ bundle
```

Or install it yourself as:

```
$ gem install translite
```

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

Contributing
------------

Fork the project with:

```
$ git clone git@github.com:frodsan/translite.git
```

To install dependencies, use:

```
$ bundle install
```

To run the test suite, do:

```
$ rake test
```

For bug reports and pull requests use [GitHub][issues].

License
-------

Translite is released under the [MIT License][mit].

[mit]: http://www.opensource.org/licenses/MIT
[issues]: https://github.com/frodsan/translite/issues
