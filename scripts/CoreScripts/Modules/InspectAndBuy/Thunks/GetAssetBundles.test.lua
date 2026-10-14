local CorePackages = game:GetService("CorePackages")
local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local expect = JestGlobals.expect
local it = JestGlobals.it
local Rodux = require(CorePackages.Packages.Rodux)
local InspectAndBuyFolder = script.Parent.Parent
local Reducer = require(InspectAndBuyFolder.Reducers.InspectAndBuyReducer)
local MockNetwork = require(InspectAndBuyFolder.Test.MockNetwork)
local Network = require(InspectAndBuyFolder.Services.Network)
local Thunk = require(InspectAndBuyFolder.Thunk)
local MockId = require(InspectAndBuyFolder.MockId)
local GetAssetBundles = require(script.Parent.GetAssetBundles)
it("set the bundles an asset is part of", function()
	local store = Rodux.Store.new(Reducer)
	local mockAssetId = tostring(2510230574) -- asset id from GetMockAssetBundlesData's asset list
	local mockBundleId = tostring(MockNetwork.GetMockAssetBundlesData().data[1].id)
	local thunk = GetAssetBundles(mockAssetId)

	Thunk.test(thunk, store, {
		[Network] = MockNetwork.new(),
	})

	local state = store:getState()
	--[[
		Because we request both assets and bundles together.
		To avoid race condition, state.assets won't be set if it is from a bundle,
		but after all requests are set, which happens in InspectAndBuy/Components/AssetList.lua:updateAssetsFromBundles
	]]
	expect(#state.assets).toBe(0)
	expect(#state.assetBundles[mockAssetId]).toBe(1)
	expect(tostring(state.assetBundles[mockAssetId][1])).toBe(mockBundleId)
	expect(#state.bundles[mockBundleId].assetIds).toBe(2) -- 2 assets in the bundle from GetMockAssetBundlesData except the UserOutfit 2510233258
	expect(tostring(state.bundles[mockBundleId].assetIds[1])).toBe(tostring(mockAssetId))
end)

it("should catch network errors that happen and still run", function()
	local store = Rodux.Store.new(Reducer)
	local mockAssetId = MockId()
	local thunk = GetAssetBundles(mockAssetId)

	Thunk.test(thunk, store, {
		[Network] = MockNetwork.new(true),
	})
end)
