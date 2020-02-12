return function()
	local CorePackages = game:GetService("CorePackages")
	local Rodux = require(CorePackages.Rodux)
	local InspectAndBuyFolder = script.Parent.Parent
	local SetAssets = require(InspectAndBuyFolder.Actions.SetAssets)
	local IsLoaded = require(script.Parent.IsLoaded)

	describe("IsLoaded", function()
		it("should mark the Inspect Menu as loaded or not", function()
			local store = Rodux.Store.new(IsLoaded)
			local newState = store:getState()
			expect(newState).to.equal(false)

			newState = IsLoaded(newState, SetAssets({}))
			expect(newState).to.equal(true)
		end)
	end)
end