local Plugin = script.Parent.Parent

local Packages = Plugin.Packages
local Roact = require(Packages.Roact)

local Asset = require(Plugin.Core.Components.Asset.Asset)

local ToolboxStoryWrapper = require(Plugin.Stories.ToolboxStoryWrapper)
local CoreTestUtils = require(Plugin.TestUtils.CoreTestUtils)
local MockItems = require(Plugin.TestUtils.MockItems)
local GetAssets = require(Plugin.Core.Actions.GetAssets)

local function AssetStory(props)
	local fakeAsset = props.fakeAsset

	props.storeSetup = function(store)
		store:dispatch(GetAssets({ fakeAsset }, 1))
	end

	return Roact.createElement(ToolboxStoryWrapper, props)
end

local fakeAssetId = 123456
local fakeAsset = MockItems.getSimpleAsset(fakeAssetId)

return {
	name = "Asset",
	summary = "An asset used in the grid view.",
	stories = {
		{
			name = "Asset",
			story = Roact.createElement(AssetStory, {
				fakeAsset = fakeAsset,
			}, {
				Asset = Roact.createElement(Asset, {
					asset = fakeAsset,
					assetData = fakeAsset,
					assetId = fakeAssetId,
					LayoutOrder = 1,
				}),
			}) or CoreTestUtils.mustSetFlag("FFlagToolboxAssetGridRefactor", true),
		},
		{
			name = "Asset hovered",
			story = Roact.createElement(AssetStory, {
				fakeAsset = fakeAsset,
			}, {
				Roact.createElement("Frame", {
					Size = UDim2.new(1, 0, 0, 250),
					BackgroundTransparency = 1,
				}, {
					Layout = Roact.createElement("UIListLayout", {
						VerticalAlignment = Enum.VerticalAlignment.Center,
						HorizontalAlignment = Enum.HorizontalAlignment.Center,
					}),
					Asset = Roact.createElement(Asset, {
						asset = fakeAsset,
						assetData = fakeAsset,
						assetId = fakeAssetId,
						isHovered = true,
						LayoutOrder = 1,
					}),
				}),
			}) or CoreTestUtils.mustSetFlag("FFlagToolboxAssetGridRefactor", true),
		},
	},
}
