#  Social Libraries

### 🚧 In the process of deprecation, do not add unless necessary 🚧

[![ci](https://github.com/Roblox/social-libraries/actions/workflows/lest.yml/badge.svg)](https://github.com/Roblox/social-libraries/actions/workflows/lest.yml)

Part of the [Social Package Ecosystem](https://confluence.rbx.com/pages/viewpage.action?pageId=244706438). Check out [this link](https://confluence.rbx.com/pages/viewpage.action?pageId=244706438) for more information!

If you're looking to add/make changes, see the [contribution guide](CONTRIBUTING.md) for step-by-step instructions.

## Purpose

Logic and components used by the Social team across projects.

## Usage Guide
To use this repository, you'll first need to create a SocialLibraries instance.

```lua
local SocialLibraries = require(Packages.SocialLibraries)
local mySocialLibraries = SocialLibraries.config({})
```

### Configuration options
| Name           | Optional | Description                                                                                                     |
| -------------- | -------- | --------------------------------------------------------------------------------------------------------------- |
| `UIBloxConfig` | ✅        | Pass in a UIBlox configuration to initialize with. Otherwise it will assume UIBlox has already been configured. |

## Documentation

See our [reference documentation](docs/index.md) to learn more.

## Contribution

Thank you for your interest! See our [contribution guide](CONTRIBUTING.md) for step-by-step instructions.
