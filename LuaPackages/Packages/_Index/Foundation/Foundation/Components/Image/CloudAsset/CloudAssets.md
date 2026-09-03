## FoundationCloudAssets

Pictograms and other cloud-hosted images come from the [FoundationCloudAssets](https://github.com/Roblox/foundation-images/blob/main/modules/foundation-cloud-assets/README.md) package. Load them with an [[Image]] component.

### Usage

To use these, pass the asset's string to the `Image` property of the [[Image]] component.

A `UIAspectRatioConstraint` is applied to all FoundationCloudAssets images so they can be resized without distortion.

You can also preload the asset using the `preloadCloudAssets` API if your use case can't afford loading latency.

```luau title="Image"
local preloadCloudAssets = Foundation.Utility.preloadCloudAssets
local Image = Foundation.Image

preloadCloudAssets("pictograms/customize") -- Optional preload

local function MyImage()
  local tokens = useTokens()

  return React.createElement(Image, {
    Image = "pictograms/customize",
    Size = UDim2.fromScale(1, 1),
    imageStyle = tokens.Color.Content.Emphasis,
  })
end
```

---
