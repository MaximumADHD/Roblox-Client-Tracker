local Plugin = script.Parent.Parent

local FFlagToolboxAssetGridRefactor5 = game:GetFastFlag("ToolboxAssetGridRefactor5")
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

return {
	name = "Asset",
	summary = "An asset used in the grid view.",
	story = FFlagToolboxAssetGridRefactor5 and Roact.createElement(AssetStory, {
		fakeAsset = MockItems.getSimpleAsset(fakeAssetId),
	}, {
		Asset = Roact.createElement(Asset, {
			assetId = fakeAssetId,
			LayoutOrder = 1,
		}),
	}) or CoreTestUtils.mustSetFlag("FFlagToolboxAssetGridRefactor5", true),
}
