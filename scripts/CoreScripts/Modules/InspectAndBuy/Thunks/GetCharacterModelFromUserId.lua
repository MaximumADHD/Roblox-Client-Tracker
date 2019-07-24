local CorePackages = game:GetService("CorePackages")
local Promise = require(CorePackages.AppTempCommon.LuaApp.Promise)
local PerformFetch = require(CorePackages.AppTempCommon.LuaApp.Thunks.Networking.Util.PerformFetch)
local InspectAndBuyFolder = script.Parent.Parent
local Thunk = require(InspectAndBuyFolder.Thunk)
local Network = require(InspectAndBuyFolder.Services.Network)

local requiredServices = {
	Network,
}

local function keyMapper(userId, isLocalPlayer)
	return "inspectAndBuy.getPlayerModel." ..tostring(userId) ..tostring(isLocalPlayer)
end

--[[
	Get the local player model.
]]
local function GetCharacterModelFromUserId(userId, isLocalPlayer, callBack)
	return Thunk.new(script.Name, requiredServices, function(store, services)
		local network = services[Network]

		return PerformFetch.Single(keyMapper(userId, isLocalPlayer), function()
			return network.getModelFromUserId(userId):andThen(
				function(model)
					callBack(model)
				end,
				function(err)
					return Promise.reject(err)
				end)
		end)(store):catch(function(err)

		end)
	end)
end

return GetCharacterModelFromUserId