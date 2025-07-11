# Tokens

<p class="intro">Tokens are predefined values that style components, ensuring consistency and making it easier to maintain and update styles across the Roblox platform.</p>

<div class="hero full-offset" markdown>
![Foundation Design Tokens](../../assets/img/hero-tokens.png)
</div>

## Usage

You can reference a token by indexing on the `tokens` object you get from [[FoundationProvider]] through the `useTokens()` hook.

```lua hl_lines="4 5"
local useTokens = Foundation.Hooks.useTokens

local function MyComponent(props)
  local tokens = useTokens()
  local backgroundColor = tokens.Color.Surface.Surface_100

  return React.createElement(View, {
    backgroundStyle = backgroundColor,
  })
end
```

!!! info

    You'll want to use [[Style Tags]] instead of using tokens directly whenever possible. Style tags are a more convenient way to apply the same tokens you see here.


---
