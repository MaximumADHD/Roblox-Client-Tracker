# Foundation Tokens Lua

Built token outputs for Luau consumers. This package contains the generated Lua token modules
produced by `@foundation-tokens/translator` from the canonical token definitions in
`@foundation-tokens/source`.

## Structure

- `src/tokens/Dark.lua` - Dark theme token factory
- `src/tokens/Light.lua` - Light theme token factory
- `src/tokens/init.lua` - Re-exports Dark and Light modules
- `src/init.lua` - Package entry point

Each theme module exports a factory function that accepts a scale parameter and returns the
full token table.

## Usage

```lua
local RbxDesignFoundations = require(Package.RbxDesignFoundations)
local darkTokens = RbxDesignFoundations.Dark(scaleFactor)
local lightTokens = RbxDesignFoundations.Light(scaleFactor)
```

## Building

```bash
bun run build        # Generate token outputs into src/
bun run stage        # Generate token outputs into .staging/src/ (for validation)
```
