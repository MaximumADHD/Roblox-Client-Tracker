local CorePackages = game:GetService("CorePackages")
local Promise = require(CorePackages.AppTempCommon.LuaApp.Promise)
local PerformFetch = require(CorePackages.AppTempCommon.LuaApp.Thunks.Networking.Util.PerformFetch)
local InspectAndBuyFolder = script.Parent.Parent
local Thunk = require(InspectAndBuyFolder.Thunk)
local Network = require(InspectAndBuyFolder.Services.Network)
local SetPlayerName = require(InspectAndBuyFolder.Actions.SetPlayerName)

local requiredServices = {
	Network,
}

local function keyMapper(playerId)
	return "inspectAndBuy.getPlayerName." ..tostring(playerId)
end

--[[
	Get the character's username from their id.
]]
local function GetPlayerName(id)
	return Thunk.new(script.Name, requiredServices, function(store, services)
		local network = services[Network]
		return PerformFetch.Single(keyMapper(id), function()
			return network.getPlayerName(id):andThen(
				function(name)
					store:dispatch(SetPlayerName(name))
					return Promise.resolve()
				end,
				function(err)
					return Promise.reject(err)
				end)
		end)(store):catch(function(err)

		end)
	end)
end

return GetPlayerName