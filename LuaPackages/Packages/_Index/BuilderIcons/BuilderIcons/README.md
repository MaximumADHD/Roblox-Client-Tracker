# Builder Icons for Luau

Builder Icons made available for Luau via a font. This package exports three tables:

- `Icon` - A table containing all icon names in PascalCase and their corresponding kebab-case name for use with the Font. Also exports an `Icon` type containing each PascalCase icon name.
- `IconVariant` - An enum table containing all icon variants (`Regular` and `Filled`). Also exports an `IconVariant` type containing each variant name.
- `Font` - A table mapping `IconVariant` to the corresponding `Font` instance for Roblox.

## Basic Usage

```lua
local BuilderIcons = require(Packages.BuilderIcons)
local Icon = BuilderIcons.Icon
local IconVariant = BuilderIcons.IconVariant
local Font = BuilderIcons.Font

local React = require(Packages.React)

local function HomeIcon()
  return React.createElement("TextLabel", {
    Text = Icon.House,
    FontFace = Font[IconVariant.Regular],
  })
end
```
