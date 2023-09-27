return function()
	local CorePackages = game:GetService("CorePackages")
	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect
	local Rodux = require(CorePackages.Rodux)
	local InspectAndBuyFolder = script.Parent.Parent
	local Reducer = require(InspectAndBuyFolder.Reducers.InspectAndBuyReducer)
	local MockNetwork = require(InspectAndBuyFolder.Test.MockNetwork)
	local Network = require(InspectAndBuyFolder.Services.Network)
	local Thunk = require(InspectAndBuyFolder.Thunk)
	local MockId = require(InspectAndBuyFolder.MockId)
	local GetBundleFavoriteCount = require(script.Parent.GetBundleFavoriteCount)

	describe("GetBundleFavoriteCount", function()
		it("should run without errors", function()
			local store = Rodux.Store.new(Reducer)
			local mockId = MockId()
			local thunk = GetBundleFavoriteCount(mockId)

			Thunk.test(thunk, store, {
				[Network] = MockNetwork.new(),
			})

			local state = store:getState()
			expect(state.bundles).toEqual({ [mockId] = expect.anything() })
		end)

		it("should get the number of favorites a bundle has", function()
			local store = Rodux.Store.new(Reducer)
			local mockId = MockId()
			local thunk = GetBundleFavoriteCount(mockId)

			Thunk.test(thunk, store, {
				[Network] = MockNetwork.new(),
			})

			expect(store:getState().bundles[mockId].numFavorites).toBe(MockNetwork.GetMockFavoriteCount())
		end)

		it("should catch network errors that happen and still run", function()
			local store = Rodux.Store.new(Reducer)
			local mockId = MockId()
			local thunk = GetBundleFavoriteCount(mockId)

			Thunk.test(thunk, store, {
				[Network] = MockNetwork.new(true),
			})
		end)
	end)
end
