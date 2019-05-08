return function()
	local InspectAndBuyFolder = script.Parent.Parent
	local SetDetailsInformation = require(InspectAndBuyFolder.Actions.SetDetailsInformation)
	local DetailsInformation = require(script.Parent.DetailsInformation)

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
	describe("SetDetailsInformation", function()
		it("should set the details information", function()
			local assetId = "123"
			local newState = DetailsInformation(nil, SetDetailsInformation(true, assetId))

			expect(newState.viewingDetails).to.equal(true)
			expect(newState.assetId).to.equal(assetId)
			expect(countKeys(newState)).to.equal(2)
		end)
	end)
end