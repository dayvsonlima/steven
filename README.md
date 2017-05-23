# Steven Framework

The MVC Crystal Framework for Rubyists

**Work in progress**


## Installation

TODO

## Usage

TODO

## Development

TODO

## Generators Rails style

### Generate model
```shell
steven generator model foo bar:integer
```

```crystal
class Foot < ActiveRecord::Base
end
```

### Generate controller
```shell
steven generate controller hello index
```

```crystal
class HelloController < Steven::Controller
  get "/hello" do
    view("hello/index")
  end
end
```

### Generate migrations
```shell
steven g migration add_description_to_products description:string
```

```crystal
TODO
```

## Contributing

1. Fork it ( https://github.com/dayvsonlima/steven-framework/fork )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request

## Contributors

- [dayvsonlima](https://github.com/dayvsonlima) Dayvson Lima - creator, maintainer
