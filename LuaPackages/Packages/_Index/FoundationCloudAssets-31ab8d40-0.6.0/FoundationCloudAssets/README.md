# Foundation Cloud Assets

Library containing cloud assets (pictograms, illustrations, etc) used in Foundation.

## Adding Assets

Asset file names should use only alphanumeric characters, underscores, or dashes. Please upload all asset files to the `assets` directory.

Unlike in `foundation-images`, you SHOULD NOT upload multiple, distinctly sized assets for a single image; just one asset is needed.

If you need help uploading an asset or have clarifying questions, reach out to the [Foundation team in Slack](https://rbx.enterprise.slack.com/archives/CHJL4PV61).

## Usage

> [!TIP]
> We recommend using Foundation's [`Image` component](https://foundation.roblox.com/components/Image/) for a standardized experience and simplified props interface.

```lua
...
local Foundation = require(Packages.Foundation)
local FoundationCloudAssets = require(Packages.FoundationCloudAssets)
...

local Assets, preloadAsset = FoundationCloudAssets.Assets, FoundationCloudAssets.preloadAsset
local assetKey = "asset_folder/asset_name" -- asset folder will be something like "pictograms", etc
preloadAsset(assetKey) -- preload to ensure asset is loaded in at render time
local asset = Assets[assetKey]
local assetSize, assetId = asset.assetId, asset.size

local resizedAssetSize = assetSize / 4 -- arbitrary, but assets are often uploaded at large sizes for higher quality, so makes sense to resize

local AssetElement = React.createElement(Foundation.Image, {
    Image = assetId,
    Size = UDim2.new(0, resizedAssetSize.X, 0, resizedAssetSize.Y),
    imageStyle = tokens.Color.Content.Emphasis, -- passing imageStyle is only necessary when using assets that are uncolored by default
    ...
})
```

## NPM

WIP