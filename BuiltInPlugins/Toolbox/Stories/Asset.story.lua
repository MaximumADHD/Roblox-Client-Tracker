local Plugin = script.Parent.Parent

local FFlagToolboxAssetGridRefactor4 = game:GetFastFlag("ToolboxAssetGridRefactor4")
local FFlagToolboxDeduplicatePackages = game:GetFastFlag("ToolboxDeduplicatePackages")
local Libs
if FFlagToolboxDeduplicatePackages then
	Libs = Plugin.Packages
else
	Libs = Plugin.Libs
end
local Roact = require(Libs.Roact)

local Asset = require(Plugin.Core.Components.Asset.Asset)

local ToolboxStoryWrapper = require(Plugin.Stories.ToolboxStoryWrapper)
local CoreTestUtils = require(Plugin.TestUtils.CoreTestUtils)
local MockItems = require(Plugin.TestUtils.MockItems)

local function AssetStory(props)
	local fakeAsset = props.fakeAsset
	local assetId = fakeAsset.Asset.Id

	props.store = CoreTestUtils.storeWithData({
		assets = {
			idToAssetMap = { [assetId] = fakeAsset },
		},
	})

	return Roact.createElement(ToolboxStoryWrapper, props)
end

local fakeAssetId = 123456

return {
	name = "Asset",
	summary = "An asset used in the grid view.",
	story = FFlagToolboxAssetGridRefactor4 and Roact.createElement(AssetStory, {
		fakeAsset = MockItems.getSimpleAsset(fakeAssetId),
	}, {
		Asset = Roact.createElement(Asset, {
			assetId = fakeAssetId,
			LayoutOrder = 1,
		}),
	}) or CoreTestUtils.mustSetFlag("FFlagToolboxAssetGridRefactor4", true),
}
