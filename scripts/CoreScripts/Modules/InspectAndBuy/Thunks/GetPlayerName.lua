local CorePackages = game:GetService("CorePackages")
local PerformFetch = require(CorePackages.Workspace.Packages.Http).PerformFetch
local InspectAndBuyFolder = script.Parent.Parent
local Thunk = require(InspectAndBuyFolder.Thunk)
local Network = require(InspectAndBuyFolder.Services.Network)
local SetPlayerName = require(InspectAndBuyFolder.Actions.SetPlayerName)
local createInspectAndBuyKeyMapper = require(InspectAndBuyFolder.createInspectAndBuyKeyMapper)
local SendCounter = require(InspectAndBuyFolder.Thunks.SendCounter)
local Constants = require(InspectAndBuyFolder.Constants)

local requiredServices = {
	Network,
}

local keyMapper = createInspectAndBuyKeyMapper("getPlayerName")

--[[
	Get the character's username from their id.
]]
local function GetPlayerName(id)
	return Thunk.new(script.Name, requiredServices, function(store, services)
		local network = services[Network]

		local key = keyMapper(store:getState().storeId, id)

		return PerformFetch.Single(key, function()
			return network.getPlayerName(id):andThen(function(name)
				store:dispatch(SetPlayerName(name))
				store:dispatch(
					SendCounter(Constants.Counters.GetPlayerName .. Constants.CounterSuffix.RequestSucceeded)
				)
			end, function(err)
				store:dispatch(SendCounter(Constants.Counters.GetPlayerName .. Constants.CounterSuffix.RequestRejected))
			end)
		end)(store):catch(function(err)
			store:dispatch(SendCounter(Constants.Counters.GetPlayerName .. Constants.CounterSuffix.RequestFailed))
		end)
	end)
end

return GetPlayerName
