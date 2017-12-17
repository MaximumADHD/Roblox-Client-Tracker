return function()
	local LuaChat = script.Parent.Parent
	local ActionType = require(LuaChat.ActionType)
	local AssetInfoModel = require(LuaChat.Models.AssetInfo)
	local AssetInfo = require(script.Parent.AssetInfo)


	describe("Action Get Asset Info", function()
		it("should add an Asset Info to the store", function()
			local assetInfo = AssetInfoModel.mock()
			local state = nil
			local action = {
				type = ActionType.FetchedAssetCardInfo,
				assetInfo = assetInfo
			}

			state = AssetInfo(state, action)

			expect(state).to.be.a("table")
			expect(state[assetInfo.AssetId]).to.be.a("table")
			expect(state[assetInfo.AssetId].AssetId).to.equal(assetInfo.AssetId)
		end)
	end)
end