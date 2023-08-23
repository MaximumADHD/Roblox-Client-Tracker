local CorePackages = game:GetService("CorePackages")
local PerformFetch = require(CorePackages.Workspace.Packages.Http).PerformFetch
local InspectAndBuyFolder = script.Parent.Parent
local Thunk = require(InspectAndBuyFolder.Thunk)
local Network = require(InspectAndBuyFolder.Services.Network)
local SetCollectibleResellableInstances = require(InspectAndBuyFolder.Actions.SetCollectibleResellableInstances)
local createInspectAndBuyKeyMapper = require(InspectAndBuyFolder.createInspectAndBuyKeyMapper)

local requiredServices = {
	Network,
}

local keyMapper = createInspectAndBuyKeyMapper("getCollectibleResellableInstances")

local function GetCollectibleResellableInstances(collectibleItemId, userId)
	return Thunk.new(script.Name, requiredServices, function(store, services)
		local network = services[Network]

		local key = keyMapper(store:getState().storeId, collectibleItemId, userId)

		return PerformFetch.Single(key, function()
			return network.getCollectibleResellableInstances(collectibleItemId, userId):andThen(function(results)
				local itemInstances = results and results.itemInstances
				if itemInstances then
					store:dispatch(SetCollectibleResellableInstances(collectibleItemId, itemInstances))
				end
			end)
		end)(store):catch(function(err) end)
	end)
end

return GetCollectibleResellableInstances
