# Cloud Assets

<p class="intro" markdown>Foundation provides a set of assets to use in your components via the <a href="https://github.com/Roblox/foundation-images/blob/main/modules/foundation-cloud-assets/README.md">FoundationCloudAssets</a> package. These images can be loaded using an [[Image]] component.</p>

---

## Usage

To use these, you'll pass the assets's string to the `Image` property of the [[Image]] component.

A `UIAspectRatioConstraint` is applied to all Images created from CloudAssets to allow for resizing without distorting the image.

You can also preload the asset using the `preloadCloudAssets` API if your usecase can't afford any loading latency.

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
