# Foundation tokens for Luau

Built token outputs for Luau consumers. This package contains the generated Luau token modules
produced by `@foundation-tokens/translator` from the canonical token definitions in
`@foundation-tokens/source`.

The generated output lives in `lib/` and is not committed. Run `bun run build` to produce it
locally. The package is published to Rotriever with `content_root = "lib"`.

## Structure

- `lib/init.lua` - package entry point. Exposes the `themes` loader plus the `Theme` and
  `ColorMode` enums, and re-exports the shared token types.
- `lib/<Theme>/init.lua` - per-theme module exposing the `Dark` and `Light` factories (for
  example, `lib/Default/init.lua`).
- `lib/<Theme>/Dark.lua`, `lib/<Theme>/Light.lua` - color-mode token factories. Each factory
  accepts a scale parameter and returns the full token table.
- `lib/enums.lua` - the `Theme` and `ColorMode` string enums.
- `lib/types.lua` - shared token types (for example, `TokenPath`).

## Usage

Require a specific theme directly and call the color-mode factory with a scale value:

```lua
local RbxDesignFoundations = require(Packages.RbxDesignFoundations)

local darkTokens = RbxDesignFoundations.themes.Default().Dark(scaleFactor)
local lightTokens = RbxDesignFoundations.themes.Default().Light(scaleFactor)
```

The `themes` table is keyed by the `Theme` enum, so consumers can iterate over every theme
without hard-coding names:

```lua
local RbxDesignFoundations = require(Packages.RbxDesignFoundations)

for theme, loadTheme in RbxDesignFoundations.themes do
	local tokens = loadTheme().Dark(scaleFactor)
	-- use tokens for `theme`
end
```

## Building

```bash
bun run build        # Generate token outputs into lib/
bun run stage        # Generate token outputs into .staging/lib/ (for validation)
```
