# Style Tags

<p class="intro">Foundation provides utility tags to style your components. These tags are backed by design tokens to ensure a consistent look and feel across all components.</p>

<div class="hero full-offset" markdown>
![Foundation Style Tags](../../assets/img/hero-styletags.png)
</div>

## Overview

Style tags help consolidate your styling into a single place, separating it from business logic in props and shortening the amount of code you need to write. They are inspired by the [Tailwind CSS](https://tailwindcss.com/){ target="_blank" } utility-first approach to styling.

- **Foundation Tokens:** Style Tags are powered by [Foundation tokens](../tokens/) to maintain a consistent and cohesive look across surfaces, while working within defined constraints.
- **Colocate Styles:** Organize your styles in one place—separate from, but located within the same file as your business logic—for clarity and maintainability.
- **Predictable Tags:** Utility tags are clear, explicit, and atomic, eliminating the guesswork of what styles apply to components like `checkbox`.


---

## Usage

Style tags are applied to the `tag` property of Foundation base components like [[View]] and [[Image]], however, not all components support this property.

```luau
React.createElement(View, {
  tag = "bg-surface-100 radius-small",
})
```

This will apply the Surface-100 background color and a small corner radius to the [[View]] component. These values come from our tokens.

### Engine Components

Not every tag listed below is rendered. Instead, we conditionally render the tags that are in use to maintain performance and avoid mounting tens of thousands of style rules. Our base components automatically add tags you give them to the rendered list. You can still use style tags with Engine components, but you need to make sure to wrap the tags in the `useStyleTags` hook; this will add them to the list of rendered tags.

Since hooks shouldn't be used in the render function, you'll need to move the hook call to the body of the component. This is what Foundation components do internally.

```luau hl_lines="3 6"
local useStyleTags = Foundation.Hooks.useStyleTags

local tag = useStyleTags("bg-surface-100 radius-small")

React.createElement("Frame", {
  [React.Tag] = tag,
})
```

!!! warning "Styling Polyfill"

    A styling polyfill has been added to Foundation while the Engine UI team works on improving the Styling Engine's performance. This polyfill does not support `useStyleTags`. While the polyfill is in place, you will need to use [[View]], [[Image]], and [[Text]] components to apply style tags.


A good rule of thumb is if you are using the `tag` prop on Foundation components, you don't need to wrap the tags in `useStyleTags`, but otherwise you do.


### VSCode Intellisense

If you're using VSCode, you can get intellisense for the available tags and hover hints for what each tag does.

1. Download the latest [Foundation Tags Intellisense extension](https://github.com/Roblox/foundation-tags-intellisense/releases) VSIX file.
2. Go to the VSCode extensions tab and click the three dots in the top right corner.
3. Select "Install from VSIX" and choose the downloaded file.

You should be using the [Luau Language Server](https://marketplace.visualstudio.com/items?itemName=JohnnyMorganz.luau-lsp), as this extension requires the Luau textmate grammar to work.


### Example

If you wanted to create a vertical list of centered elements with a gap between them and a rounded corner, you would write that traditionally like this:


```luau
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

```luau
React.createElement(View, {
  tag = "col gap-small align-x-center radius-small bg-surface-100",
}, {
  ... -- Children
})
```

### Conditional Tags

You can conditionally apply tags by passing a table of tags to the `tag` property. This is useful for applying different styles based on props. The key is your tag value(s) and the value can be any boolean expression.

```luau
React.createElement(View, {
  tag = {
    ["bg-surface-100"] = not props.isDisabled,
    ["bg-surface-200"] = props.isDisabled,
  },
})
```

---
