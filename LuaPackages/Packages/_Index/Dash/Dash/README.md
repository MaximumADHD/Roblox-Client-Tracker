![Roblox official](https://img.shields.io/badge/Roblox%20official-black?logo=roblox)
[![tests](https://github.com/Roblox/dash-internal/actions/workflows/test.yml/badge.svg)](https://github.com/Roblox/dash-internal/actions/workflows/test.yml)
[![GitHub license](https://img.shields.io/badge/license-MIT-lightgrey.svg?style=flat)](./LICENSE.txt)
[![Roblox official](https://img.shields.io/badge/docs-website-blue)](https://roblox.github.io/dash-internal/)

# Dash

A collection of core utilities expanding the capabilities of Luau in Roblox.

[Read the docs](https://roblox.github.io/dash-internal/)

## Usage

Add this package to `dependencies` section in your `rotriever.toml`, for example:

```toml
Dash = "3.3.0"
```

Then, require anything you need from `Dash`:

```luau
local Dash = require(Packages.Dash)
local map = Dash.map
```

## Testing

To run tests:

`lest -e tests`

## Benchmarking

To run benchmarks:

`lest -e benchmarks`

## License

Dash is available under the MIT license. See [LICENSE](LICENSE.txt) for details.
