return function()
	local Plugin = script.Parent.Parent.Parent
	local Category = require(Plugin.Core.Types.Category)
	local InsertAsset = require(script.Parent.InsertAsset)

	describe("doInsertAsset", function()
		-- TODO: DEVTOOLS-4319 - Add unit tests for other functionaility and asset types

		it("should add videos", function()
			local options = {
				assetId = 5608327482,
				assetName = "UNIT TEST",
				assetTypeId = Enum.AssetType.Video.Value,
				onSuccess = function() end,
				categoryName = Category.MARKETPLACE_VIDEOS.name,
			}
			local success, result = pcall(function()
				return InsertAsset.doInsertAsset(options, nil)
			end)
			expect(success).to.equal(true)
		end)
	end)
end
