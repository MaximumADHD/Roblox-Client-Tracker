# Tokens

<div class="columns-3" markdown>
<ul markdown><li markdown>[Try in Storybook](https://www.roblox.com/games/start?launchData=%7B%22component%22%3A%22Tokens%22%2C%22storybook%22%3A%22Foundation%22%7D&placeId=18428583948){ target='_blank' .action-storybook }</li><li markdown>[Open in Github](https://github.com/Roblox/foundation/tree/main/modules/foundation/src/Providers/Style){ target='_blank' .action-github }</li><li markdown>[Edit Documentation](https://github.com/Roblox/foundation/edit/main/modules/foundation/src/Providers/Style/Tokens/Tokens.md){ target='_blank' .action-edit }</li></ul>
</div>

<p class="intro">Tokens are predefined values that style components, ensuring consistency and making it easier to maintain and update styles across the Roblox platform.</p>

<div class="hero full-offset" markdown>
![Foundation Design Tokens](../../assets/img/hero-tokens.png)
</div>

## Usage

You can reference a token by indexing on the `tokens` object you get from [[FoundationProvider]] through the `useTokens()` hook.

```luau hl_lines="4 5"
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
