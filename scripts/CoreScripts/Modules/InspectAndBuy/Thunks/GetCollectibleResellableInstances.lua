local CorePackages = game:GetService("CorePackages")
local PerformFetch = require(CorePackages.Workspace.Packages.Http).PerformFetch
local InspectAndBuyFolder = script.Parent.Parent
local Thunk = require(InspectAndBuyFolder.Thunk)
local Network = require(InspectAndBuyFolder.Services.Network)
local SetCollectibleResellableInstances = require(InspectAndBuyFolder.Actions.SetCollectibleResellableInstances)
local createInspectAndBuyKeyMapper = require(InspectAndBuyFolder.createInspectAndBuyKeyMapper)
local SendCounter = require(InspectAndBuyFolder.Thunks.SendCounter)
local Constants = require(InspectAndBuyFolder.Constants)

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

				if itemInstances then
					store:dispatch(
						SendCounter(
							Constants.Counters.GetCollectibleResellableInstances
								.. Constants.CounterSuffix.RequestSucceeded
						)
					)
				else
					store:dispatch(
						SendCounter(Constants.Counters.GetCollectibleResellableInstancesRequestSucceededWithoutResult)
					)
				end
			end, function(err)
				store:dispatch(
					SendCounter(
						Constants.Counters.GetCollectibleResellableInstances .. Constants.CounterSuffix.RequestRejected
					)
				)
			end)
		end)(store):catch(function(err)
			store:dispatch(
				SendCounter(
					Constants.Counters.GetCollectibleResellableInstances .. Constants.CounterSuffix.RequestFailed
				)
			)
		end)
	end)
end

return GetCollectibleResellableInstances
