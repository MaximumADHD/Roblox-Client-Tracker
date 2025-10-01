# Images

<p class="intro" markdown>Foundation provides a set of images and icons to use in your components. These images can be loaded using either an [[Image]] component or an [[Icon]] component.</p>

<!-- ![FPO](../../assets/img/darkmode/fpo.png){ .img-hero } -->

---

## Usage

To use these, you'll pass the image's string to the `Image` property of the [[Image]] component or the `name` property of the [[Icon]] component.

**In general, you'll use the simple, opinionated [[Icon]] component for icons**. It sizes the Icon and applies default styling for you. Most of the icons here are deprecated in favor of Builder Icons. Read more on the [[Icon]] page.

!!! warning "Deprecated Icons"

    The majority of icons in this set are deprecated in favor of Builder Icons. They will be removed in a future release. Use the [[Icon]] component with Builder Icons instead.

The [[Image]] component is used for graphics that use non standard sizes and other images that require slicing.

```luau title="Image"
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

<!-- 
## Reference

You can use the copy button next to each image name to copy the full image path to your clipboard. This is passed to [[Image]]'s `Image` property or [[Icon]]'s `name` property. -->

---
