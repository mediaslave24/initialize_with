## initialize_with

### Install
```
gem install initialize_with
```

### Requirements
ruby version >= 1.9.3

### Synopsis
``` ruby
require 'initialize_with'

class Foo
  extend InitializeWith
  initialize_with [:a, :b], c: 1, d: 2
  attr_reader :a, :b, :c, :d
end

foo = Foo.new("foo", "bar")
print foo.a, foo.b, foo.c, foo.d, "\n" # => "foobar12"
```
