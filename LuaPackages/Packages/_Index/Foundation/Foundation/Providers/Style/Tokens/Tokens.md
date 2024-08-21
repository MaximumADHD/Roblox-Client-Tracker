# Tokens

Tokens are a set of predefined values that can be used to style components. They are used to ensure consistency in the design system and to make it easier to maintain and update styles across the application.

## How to Use

You can reference a token by indexing on the `tokens` object you get from [[FoundationProvider]] through the `useTokens()` hook.

```lua hl_lines="4 5 6"
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

## Reference

You can use the copy button to copy the token path to your clipboard. You'll put this after the `tokens` object to get the value you want.
