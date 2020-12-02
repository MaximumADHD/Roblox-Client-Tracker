local CorePackages = game:GetService("CorePackages")
local PerformFetch = require(CorePackages.AppTempCommon.LuaApp.Thunks.Networking.Util.PerformFetch)
local InspectAndBuyFolder = script.Parent.Parent
local Thunk = require(InspectAndBuyFolder.Thunk)
local Network = require(InspectAndBuyFolder.Services.Network)
local createInspectAndBuyKeyMapper = require(InspectAndBuyFolder.createInspectAndBuyKeyMapper)

local FFlagFixInspectAndBuyPerformFetch = require(InspectAndBuyFolder.Flags.FFlagFixInspectAndBuyPerformFetch)

local requiredServices = {
	Network,
}

local keyMapper
if FFlagFixInspectAndBuyPerformFetch then
	keyMapper = createInspectAndBuyKeyMapper("getPlayerModel")
else
	keyMapper = function(userId, isLocalPlayer)
		return "inspectAndBuy.getPlayerModel." ..tostring(userId) ..tostring(isLocalPlayer)
	end
end

--[[
	Get the local player model.
]]
local function GetCharacterModelFromUserId(userId, isLocalPlayer, callBack)
	return Thunk.new(script.Name, requiredServices, function(store, services)
		local network = services[Network]

		local key
		if FFlagFixInspectAndBuyPerformFetch then
			key = keyMapper(store:getState().storeId, userId, isLocalPlayer)
		else
			key = keyMapper(userId, isLocalPlayer)
		end

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