# Style Tags

Foundation provides utility tags to style your components. These tags are backed by design tokens to ensure a consistent look and feel across all components. They are inspired by the [Tailwind CSS](https://tailwindcss.com/) utility-first approach to styling.

Style tags help consolidate your styling into a single place, separating it from business logic in props and shortening the amount of code you need to write.

## How to Use

Style tags are applied to `tag` property of Foundation base components like [[View]] and [[Image]]. Some other Foundation components also support this property, but not all.

```lua
React.createElement(View, {
  tag = "bg-surface-100 radius-small",
})
```

This will apply the Surface-100 background color and a small corner radius to the [[View]] component. These values come from our tokens.

### Engine Components

Not every tag listed below is rendered. Instead, we conditionally render the tags that are in use to maintain performance and avoid mounting tens of thousands of style rules. Our base components automatically add tags you give them to the rendered list. You can still use style tags with Engine components, but you need to make sure to wrap the tags in the `useStyleTags` hook; this will add them to the list of rendered tags.

Since hooks shouldn't be used in the render function, you'll need to move the hook call to the body of the component. This is what Foundation components do internally.

```lua hl_lines="3 6"
local useStyleTags = Foundation.useStyleTags

local tag = useStyleTags("bg-surface-100 radius-small")
...
React.createElement("Frame", {
  [React.Tag] = tag,
})
```

A good rule of thumb is if you are using the `tag` prop on Foundation components, you don't need to wrap the tags in `useStyleTags`, but otherwise you do.

### VSCode Intellisense

If you're using VSCode, you can get intellisense for the available tags and hover hints for what each tag does.

1. Download the latest [Foundation Tags Intellisense extension](https://github.com/Roblox/foundation-tags-intellisense/releases) VSIX file.
2. Go to the VSCode extensions tab and click the three dots in the top right corner.
3. Select "Install from VSIX" and choose the downloaded file.

You should be using the [Luau Language Server](https://marketplace.visualstudio.com/items?itemName=JohnnyMorganz.luau-lsp), as this extension requires the Luau textmate grammar to work.

## Example

If you wanted to create a vertical list of centered elements with a gap between them and a rounded corner, you would write that traditionally like this:

```lua
React.createElement("Frame", {
  BackgroundColor = Color3.fromRGB(255, 255, 255), -- Not token-ified!
}, {
  ListLayout = React.createElement("UIListLayout", {
    Padding = UDim.new(0, 8), -- Not token-ified!
    FillDirection = Enum.FillDirection.Vertical,
    HorizontalAlignment = Enum.HorizontalAlignment.Center,
  }),
  Corner = React.createElement("UICorner", {
    CornerRadius = UDim.new(0, 4), -- Not token-ified!
  }),
  ... -- Children
})
```
With Foundation utility style tags, you can write the same thing like this:

```lua
React.createElement(View, {
  tag = "col gap-small align-x-center radius-small bg-surface-100",
}, {
  ... -- Children
})
```

## Conditional Tags

You can conditionally apply tags by passing a table of tags to the `tag` property. This is useful for applying different styles based on props. The key is your tag value(s) and the value can be any boolean expression.

```lua
React.createElement(View, {
  tag = {
    ["bg-surface-100"] = true,
    ["bg-surface-200"] = props.isDisabled,
  },
})
```

## Why?

> Now I know what you’re thinking, *"this is an atrocity, what a horrible mess!"* and you’re right, it’s kind of ugly. In fact it’s just about impossible to think this is a good idea the first time you see it — **you have to actually try it**.

— *[Tailwind CSS Docs](https://tailwindcss.com/docs/utility-first)*

- **Backed by RDL tokens**: Ensure a consistent look and feel across surfaces with constraints.
- **Colocate styles**: Keep your styles in one place, separate but in the same file as business logic.
- **Predictable tags**: No guessing what styles a `checkbox` tag applies, every utility tag is explicit and atomic.

<style>
table {
	max-height: 500px;
	overflow-y: auto;
}

table td:first-child {
	white-space: nowrap;
}
</style>

## Reference
