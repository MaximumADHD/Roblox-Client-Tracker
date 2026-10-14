local CorePackages = game:GetService("CorePackages")
local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local expect = JestGlobals.expect
local describe = JestGlobals.describe
local it = JestGlobals.it
local Rodux = require(CorePackages.Packages.Rodux)
local InspectAndBuyFolder = script.Parent.Parent
local Reducer = require(InspectAndBuyFolder.Reducers.InspectAndBuyReducer)
local UnitTestHelpers = require(CorePackages.Workspace.Packages.UnitTestHelpers)
local mockClassInterfaces = UnitTestHelpers.mockClassInterfaces
local Analytics = require(InspectAndBuyFolder.Services.Analytics)
local Thunk = require(InspectAndBuyFolder.Thunk)
local TryOnItem = require(script.Parent.TryOnItem)

describe("TryOnItem", function()
	it("should set the store and send analytics", function()
		local store = Rodux.Store.new(Reducer)
		local mockId = 1
		local analytics = mockClassInterfaces.new(Analytics, "Analytics")
		expect(analytics.mockService.reportTryOnButtonClicked).never.toHaveBeenCalled()

		local thunk = TryOnItem(true, 1, 1, true, mockId)

		Thunk.test(thunk, store, {
			[Analytics] = analytics.mockService,
		})

		local state = store:getState()
		expect(analytics.mockService.reportTryOnButtonClicked).toHaveBeenCalledTimes(1)
		expect(state.tryingOnInfo.assetId).toBe(mockId)
	end)
end)
