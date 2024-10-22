--[[
	Holds the list of owned instances for each collectible item
]]

local CorePackages = game:GetService("CorePackages")
local Rodux = require(CorePackages.Rodux)
local Cryo = require(CorePackages.Cryo)
local InspectAndBuyFolder = script.Parent.Parent
local SetCollectibleResellableInstances = require(InspectAndBuyFolder.Actions.SetCollectibleResellableInstances)
local CollectibleInstance = require(InspectAndBuyFolder.Models.CollectibleInstance)

return Rodux.createReducer({}, {
	[SetCollectibleResellableInstances.name] = function(state, action)
		local collectibleItemId = action.collectibleItemId

		local collectibleInstances = {}
		for _, data in action.collectibleItemInstances do
			local collectibleInstance = CollectibleInstance.fromGetCollectibleItemInstances(data)
			collectibleInstances[collectibleInstance.collectibleInstanceId] = collectibleInstance
		end

		return Cryo.Dictionary.join(state, { [collectibleItemId] = collectibleInstances })
	end,
})
