# kwstruct

Just like regular Struct, but uses keyword arguments.

```ruby
Person = KwStruct.new(:name, :age)
sammy = Person.new(name: 'Sammy', age: 30)
```

Any non-existent arguments will raise an ArgumentError.

## Installation

    $ gem install kwstruct
