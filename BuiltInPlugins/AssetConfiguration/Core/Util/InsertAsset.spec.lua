return function()
	local FFlagEnableToolboxVideos = game:GetFastFlag("EnableToolboxVideos")
	local InsertAsset = require(script.Parent.InsertAsset)

	describe("doInsertAsset", function()
		-- TODO: DEVTOOLS-4319 - Add unit tests for other functionaility and asset types

		it("should add videos", function()
			if FFlagEnableToolboxVideos then
				local options = {
					assetId = 0,
					assetName = "UNIT TEST",
					assetTypeId = Enum.AssetType.Video.Value,
					onSuccess = function() end,
				}
				local success, result = pcall(function()
					return InsertAsset.doInsertAsset(options, nil)
				end)
				expect(success).to.equal(true)
			end
		end)
	end)
end
