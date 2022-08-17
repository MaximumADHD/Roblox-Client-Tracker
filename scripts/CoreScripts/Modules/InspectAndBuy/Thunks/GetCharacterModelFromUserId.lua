local CorePackages = game:GetService("CorePackages")
local PerformFetch = require(CorePackages.AppTempCommon.LuaApp.Thunks.Networking.Util.PerformFetch)
local InspectAndBuyFolder = script.Parent.Parent
local Thunk = require(InspectAndBuyFolder.Thunk)
local Network = require(InspectAndBuyFolder.Services.Network)
local createInspectAndBuyKeyMapper = require(InspectAndBuyFolder.createInspectAndBuyKeyMapper)

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
			return network.getModelFromUserId(userId):andThen(
				function(model)
					callBack(model)
				end)
		end)(store):catch(function(err)

		end)
	end)
end

return GetCharacterModelFromUserId
