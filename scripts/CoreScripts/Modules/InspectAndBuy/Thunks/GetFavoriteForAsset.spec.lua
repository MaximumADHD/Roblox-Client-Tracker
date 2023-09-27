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
	local GetFavoriteForAsset = require(script.Parent.GetFavoriteForAsset)

	describe("GetFavoriteForAsset", function()
		it("should run without errors", function()
			local store = Rodux.Store.new(Reducer)
			local mockId = MockId()
			local thunk = GetFavoriteForAsset(mockId)

			Thunk.test(thunk, store, {
				[Network] = MockNetwork.new(),
			})

			local state = store:getState()
			expect(state.favorites.assets).toEqual({ [mockId] = expect.anything() })
		end)

		it("should update the favorite status of an asset if it is favorited", function()
			local store = Rodux.Store.new(Reducer)
			local getFavoriteModelId = MockNetwork.GetFavoriteModelId()
			local thunk = GetFavoriteForAsset(getFavoriteModelId)

			Thunk.test(thunk, store, {
				[Network] = MockNetwork.new(),
			})

			expect(store:getState().favorites.assets[getFavoriteModelId]).toBe(true)
		end)

		it("should update the favorite status of an asset if it is NOT favorited", function()
			local store = Rodux.Store.new(Reducer)
			local mockId = MockId()
			local thunk = GetFavoriteForAsset(mockId)

			Thunk.test(thunk, store, {
				[Network] = MockNetwork.new(),
			})

			expect(store:getState().favorites.assets[mockId]).toBe(false)
		end)

		it("should catch network errors that happen and still run", function()
			local store = Rodux.Store.new(Reducer)
			local mockId = MockId()
			local thunk = GetFavoriteForAsset(mockId)

			Thunk.test(thunk, store, {
				[Network] = MockNetwork.new(true),
			})
		end)
	end)
end
