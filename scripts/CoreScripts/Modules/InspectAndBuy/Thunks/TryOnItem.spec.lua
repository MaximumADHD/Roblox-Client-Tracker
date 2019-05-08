return function()
	local CorePackages = game:GetService("CorePackages")
	local Rodux = require(CorePackages.Rodux)
	local InspectAndBuyFolder = script.Parent.Parent
	local Reducer = require(InspectAndBuyFolder.Reducers.InspectAndBuyReducer)
	local MockAnalytics = require(InspectAndBuyFolder.Test.MockAnalytics)
	local Analytics = require(InspectAndBuyFolder.Services.Analytics)
	local Thunk = require(InspectAndBuyFolder.Thunk)
	local TryOnItem = require(script.Parent.TryOnItem)

	describe("TryOnItem", function()
		it("should set the store and send analytics", function()
			local store = Rodux.Store.new(Reducer)
			local mockId = 1
			local analytics = MockAnalytics.new()
			expect(analytics.reportTryOnButtonClicked_callCount).to.equal(0)

			local thunk = TryOnItem(true, 1, 1, true, mockId)

			Thunk.test(thunk, store, {
				[Analytics] = analytics,
			})

			local state = store:getState()
			expect(analytics.reportTryOnButtonClicked_callCount).to.equal(1)
			expect(state.tryingOnInfo.assetId).to.equal(mockId)
		end)
	end)
end