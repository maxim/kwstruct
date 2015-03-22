# kwstruct

Just like regular Struct, but uses keyword arguments.

```ruby
Person = KwStruct.new(:name, :age)
sammy = Person.new(name: 'Sammy', age: 30)
```

Any non-existent arguments will raise an ArgumentError.

## Installation

    $ gem install kwstruct

## Credits

Thanks [@apeiros](https://github.com/apeiros) for ideas.  
Thanks [@bughit](https://github.com/bughit) for hitting a bug.
