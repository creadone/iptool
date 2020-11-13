# iptool

Console tool for calculate subnet by first and last IPv4. IPtool heavily based on great library [Subnet](https://github.com/watzon/subnet) by Chris Watson.

## Installation

```
git clone https://github.com/creadone/iptool && cd iptool && shards build --release
```

## Usage

```
echo '173.194.0.0 - 173.194.255.255' | ./bin/iptool
#=> 173.194.0.0/16
```

## Development

TODO: Write development instructions here

## Contributing

1. Fork it (<https://github.com/creadone/iptool/fork>)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Contributors

- [Creadone](https://github.com/creadone) - creator and maintainer
