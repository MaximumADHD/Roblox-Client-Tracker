local CorePackages = game:GetService("CorePackages")
local Cryo = require(CorePackages.Cryo)
local Rodux = require(CorePackages.Rodux)
local InspectAndBuyFolder = script.Parent.Parent
local SetBundles = require(InspectAndBuyFolder.Actions.SetBundles)

--[[
	For V1, in order to prevent going through all pages of the
	/v1/assets/{assetId}/bundles endpoint for Rthro assets we
	manually populate Rthro animation bundle data. In the future
	we only need to get a few bundles at a time as a user scrolls
	through the list of bundles.
]]
return Rodux.createReducer(
	{}
, {
	--[[
		Set/update bundle information.
	]]
	[SetBundles.name] = function(state, action)
		local bundles = {}

		for _, bundle in ipairs(action.bundles) do
			assert(bundle.bundleId ~= nil, "Expected a bundle id when setting a bundle's information.")
			local currentBundle = state[bundle.bundleId] or {}
			bundles[bundle.bundleId] = Cryo.Dictionary.join(currentBundle, bundle)
		end

		return Cryo.Dictionary.join(state, bundles)
	end,
})