local CorePackages = game:GetService("CorePackages")
local PerformFetch = require(CorePackages.Workspace.Packages.Http).PerformFetch
local InGameMenu = script.Parent.Parent
local InspectAndBuyThunk = require(InGameMenu.InspectAndBuyThunk)
local Network = require(InGameMenu.Network.Requests.InspectAndBuy.Network)
local createInspectAndBuyKeyMapper = require(InGameMenu.Utility.createInspectAndBuyKeyMapper)
local keyMapper = createInspectAndBuyKeyMapper("getPlayerModel")

--[[
	Get the player model from user id using the Players Service.
]]
local function GetCharacterModelFromUserId(userId, isLocalPlayer, callBack)
	return InspectAndBuyThunk.new(script.Name, function(store, services)
		local network = services[Network]
		local key = keyMapper(store:getState().inspectAndBuy.StoreId, userId, isLocalPlayer)

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