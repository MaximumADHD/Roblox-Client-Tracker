return function()
	local CorePackages = game:GetService("CorePackages")
	local Rodux = require(CorePackages.Rodux)
	local InspectAndBuyFolder = script.Parent.Parent
	local Reducer = require(InspectAndBuyFolder.Reducers.InspectAndBuyReducer)
	local Thunk = require(InspectAndBuyFolder.Thunk)
	local Constants = require(InspectAndBuyFolder.Constants)
	local AssetInfo = require(InspectAndBuyFolder.Models.AssetInfo)
	local BundleInfo = require(InspectAndBuyFolder.Models.BundleInfo)
	local SetAssets = require(InspectAndBuyFolder.Actions.SetAssets)
	local SetBundles = require(InspectAndBuyFolder.Actions.SetBundles)
	local UpdateOwnedStatus = require(script.Parent.UpdateOwnedStatus)

	it("should update the owned status of an asset", function()
		local store = Rodux.Store.new(Reducer)
		local asset = AssetInfo.mock()
		store:dispatch(SetAssets({asset}))
		expect(store:getState().assets[asset.assetId].owned).to.equal(false)

		local thunk = UpdateOwnedStatus(asset.assetId, Constants.ItemType.Asset)

		Thunk.test(thunk, store, {})

		local state = store:getState()

		expect(state.assets[asset.assetId].owned).to.equal(true)
	end)

	it("should update the owned status of a bundle", function()
		local store = Rodux.Store.new(Reducer)
		local bundle = BundleInfo.mock()
		store:dispatch(SetBundles({bundle}))
		expect(store:getState().bundles[bundle.bundleId].owned).to.equal(false)

		local thunk = UpdateOwnedStatus(bundle.bundleId, Constants.ItemType.Bundle)

		Thunk.test(thunk, store, {})

		local state = store:getState()

		expect(state.bundles[bundle.bundleId].owned).to.equal(true)
	end)
end