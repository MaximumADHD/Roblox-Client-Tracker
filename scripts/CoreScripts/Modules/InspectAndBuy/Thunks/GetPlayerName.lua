local CorePackages = game:GetService("CorePackages")
local PerformFetch = require(CorePackages.AppTempCommon.LuaApp.Thunks.Networking.Util.PerformFetch)
local InspectAndBuyFolder = script.Parent.Parent
local Thunk = require(InspectAndBuyFolder.Thunk)
local Network = require(InspectAndBuyFolder.Services.Network)
local SetPlayerName = require(InspectAndBuyFolder.Actions.SetPlayerName)
local createInspectAndBuyKeyMapper = require(InspectAndBuyFolder.createInspectAndBuyKeyMapper)

local FFlagFixInspectAndBuyPerformFetch = require(InspectAndBuyFolder.Flags.FFlagFixInspectAndBuyPerformFetch)

local requiredServices = {
	Network,
}

local keyMapper
if FFlagFixInspectAndBuyPerformFetch then
	keyMapper = createInspectAndBuyKeyMapper("getPlayerName")
else
	keyMapper = function(playerId)
		return "inspectAndBuy.getPlayerName." ..tostring(playerId)
	end
end

--[[
	Get the character's username from their id.
]]
local function GetPlayerName(id)
	return Thunk.new(script.Name, requiredServices, function(store, services)
		local network = services[Network]

		local key
		if FFlagFixInspectAndBuyPerformFetch then
			key = keyMapper(store:getState().storeId, id)
		else
			key = keyMapper(id)
		end

		return PerformFetch.Single(key, function()
			return network.getPlayerName(id):andThen(
				function(name)
					store:dispatch(SetPlayerName(name))
				end)
		end)(store):catch(function(err)

		end)
	end)
end

return GetPlayerName