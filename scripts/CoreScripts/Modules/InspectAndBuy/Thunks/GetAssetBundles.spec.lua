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
	local GetAssetBundles = require(script.Parent.GetAssetBundles)
	local GetFFlagIBEnableNewDataCollectionForCollectibleSystem =
		require(InspectAndBuyFolder.Flags.GetFFlagIBEnableNewDataCollectionForCollectibleSystem)
	it("set the bundles an asset is part of", function()
		local store = Rodux.Store.new(Reducer)
		local mockAssetId = MockId()
		local thunk = GetAssetBundles(mockAssetId)

		Thunk.test(thunk, store, {
			[Network] = MockNetwork.new(),
		})

		local state = store:getState()
		if GetFFlagIBEnableNewDataCollectionForCollectibleSystem() then
			-- TODO(lliu): Add test for new data collection GetAssetBundles
		else
			expect(#state.assets[mockAssetId].bundlesAssetIsIn).toBe(#MockNetwork.GetMockAssetBundlesData().data)
			expect(state.assets[mockAssetId].bundlesAssetIsIn[1]).toBe(
				tostring(MockNetwork.GetMockAssetBundlesData().data[1].id))
		end
	end)

	it("should catch network errors that happen and still run", function()
		local store = Rodux.Store.new(Reducer)
		local mockAssetId = MockId()
		local thunk = GetAssetBundles(mockAssetId)

		Thunk.test(thunk, store, {
			[Network] = MockNetwork.new(true),
		})
	end)
end
