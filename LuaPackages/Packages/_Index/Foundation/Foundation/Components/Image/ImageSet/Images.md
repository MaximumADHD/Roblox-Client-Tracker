# Images

Foundation provides a set of images and icons to use in your components. These images can be loaded using either an [[Image]] component or an [[Icon]] component.

## How to Use

To use these, you'll pass the image's string to the `Image` property of the [[Image]] component or the `name` property of the [[Icon]] component.

**In general, you'll use the simple, opinionated [[Icon]] component for icon images**. It sizes the Icon and applies default styling for you.

```lua title="Icon"
local Icon = Foundation.Icon
local IconSize = Foundation.Enums.IconSize

local function MyAdd()
  return React.createElement(Icon, {
    name = "icons/actions/edit/add",
    size = IconSize.Medium
  })
end
```

The [[Image]] component is used for graphics that use non standard sizes and other images that require slicing.

```lua title="Image"
local Image = Foundation.Image
local useTokens = Foundation.Hooks.useStyle

local function MyImage()
  local tokens = useTokens()
  local size = tokens.Size.Size_2400

  return React.createElement(Image, {
    Image = "icons/graphic/blocktheft_2xl",
    Size = UDim2.fromOffset(size, size)
  })
end
```

## Reference

You can use the copy button next to each image name to copy the full image path to your clipboard. This is passed to [[Image]]'s `Image` property or [[Icon]]'s `name` property.
