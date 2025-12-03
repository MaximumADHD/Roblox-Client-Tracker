local CorePackages = game:GetService("CorePackages")
local PerformFetch = require(CorePackages.Workspace.Packages.Http).PerformFetch
local InspectAndBuyFolder = script.Parent.Parent
local Thunk = require(InspectAndBuyFolder.Thunk)
local Network = require(InspectAndBuyFolder.Services.Network)
local createInspectAndBuyKeyMapper = require(InspectAndBuyFolder.createInspectAndBuyKeyMapper)
local SendCounter = require(InspectAndBuyFolder.Thunks.SendCounter)
local Constants = require(InspectAndBuyFolder.Constants)

local requiredServices = {
	Network,
}

local keyMapper = createInspectAndBuyKeyMapper("getPlayerModel")

--[[
	Get the local player model.
]]
local function GetCharacterModelFromUserId(userId, isLocalPlayer, callBack)
	return Thunk.new(script.Name, requiredServices, function(store, services)
		local network = services[Network]

		local key = keyMapper(store:getState().storeId, userId, isLocalPlayer)

		return PerformFetch.Single(key, function()
			return network.getModelFromUserId(userId):andThen(function(model)
				callBack(model)
				store:dispatch(
					SendCounter(
						Constants.Counters.GetCharacterModelFromUserId .. Constants.CounterSuffix.RequestSucceeded
					)
				)
			end, function(err)
				store:dispatch(
					SendCounter(
						Constants.Counters.GetCharacterModelFromUserId .. Constants.CounterSuffix.RequestRejected
					)
				)
			end)
		end)(store):catch(function(err)
			store:dispatch(
				SendCounter(Constants.Counters.GetCharacterModelFromUserId .. Constants.CounterSuffix.RequestFailed)
			)
		end)
	end)
end

return GetCharacterModelFromUserId
