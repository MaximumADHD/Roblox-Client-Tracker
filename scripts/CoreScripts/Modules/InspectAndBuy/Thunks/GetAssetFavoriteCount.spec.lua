return function()
	local CorePackages = game:GetService("CorePackages")
	local Rodux = require(CorePackages.Rodux)
	local InspectAndBuyFolder = script.Parent.Parent
	local Reducer = require(InspectAndBuyFolder.Reducers.InspectAndBuyReducer)
	local MockNetwork = require(InspectAndBuyFolder.Test.MockNetwork)
	local Network = require(InspectAndBuyFolder.Services.Network)
	local Thunk = require(InspectAndBuyFolder.Thunk)
	local MockId = require(InspectAndBuyFolder.MockId)
	local GetAssetFavoriteCount = require(script.Parent.GetAssetFavoriteCount)

	local function countKeys(t)
		local count = 0
		for _ in pairs(t) do
			count = count + 1
		end
		return count
	end

	describe("GetAssetFavoriteCount", function()
		it("should run without errors", function()
			local store = Rodux.Store.new(Reducer)
			local mockId = MockId()
			local thunk = GetAssetFavoriteCount(mockId)

			Thunk.test(thunk, store, {
				[Network] = MockNetwork.new(),
			})

			local state = store:getState()
			expect(countKeys(state.assets)).to.equal(1)
		end)

		it("should get the number of favorites an asset has", function()
			local store = Rodux.Store.new(Reducer)
			local mockId = MockId()
			local thunk = GetAssetFavoriteCount(mockId)

			Thunk.test(thunk, store, {
				[Network] = MockNetwork.new(),
			})

			expect(store:getState().assets[mockId].numFavorites).to.equal(MockNetwork.GetMockFavoriteCount())
		end)

		it("should catch network errors that happen and still run", function()
			local store = Rodux.Store.new(Reducer)
			local mockId = MockId()
			local thunk = GetAssetFavoriteCount(mockId)

			Thunk.test(thunk, store, {
				[Network] = MockNetwork.new(true),
			})
		end)
	end)
end