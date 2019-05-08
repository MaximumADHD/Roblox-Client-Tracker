return function()
	local InspectAndBuyFolder = script.Parent.Parent
	local SetTryingOnInfo = require(InspectAndBuyFolder.Actions.SetTryingOnInfo)
	local TryingOnInfo = require(script.Parent.TryingOnInfo)

	local function countKeys(t)
		local count = 0
		for _ in pairs(t) do
			count = count + 1
		end
		return count
	end

--[[
	Note: Rthro Animation Bundle is by default in the Bundles reducer.
]]
	describe("SetTryingOnInfo", function()
		it("should set the trying on information", function()
			local assetId = "123"
			local assetTypeId = "8"
			local newState = TryingOnInfo(nil, SetTryingOnInfo(true, assetId, assetTypeId))

			expect(newState.tryingOn).to.equal(true)
			expect(newState.assetId).to.equal(assetId)
			expect(newState.assetTypeId).to.equal(assetTypeId)
			expect(countKeys(newState)).to.equal(3)
		end)
	end)
end