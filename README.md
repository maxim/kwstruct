Now that ruby structs have `keyword_init: true`, and Data class works with keywords out of the box, this is no longer needed. For a more featureful approach, consider [portrayal](https://github.com/scottscheapflights/portrayal).

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
