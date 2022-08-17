local CorePackages = game:GetService("CorePackages")
local Players = game:GetService("Players")
local Promise = require(CorePackages.AppTempCommon.LuaApp.Promise)
local PerformFetch = require(CorePackages.AppTempCommon.LuaApp.Thunks.Networking.Util.PerformFetch)
local InGameMenu = script.Parent.Parent
local createInspectAndBuyKeyMapper = require(InGameMenu.Utility.createInspectAndBuyKeyMapper)
local keyMapper = createInspectAndBuyKeyMapper("getPlayerModel")

--[[
	Get the player model from user id using the Players Service.
]]
local function GetCharacterModelFromUserId(userId, isLocalPlayer, callBack)
	return function(store)
		local storeId = store:getState().inspectAndBuy.StoreId
		return PerformFetch.Single(keyMapper(storeId, userId, isLocalPlayer), function(store)
			return Promise.new(function(resolve, reject)
				spawn(function()
					local model = Players:CreateHumanoidModelFromUserId(userId)

					if model then
						resolve(model)
					else
						reject("Failure in getModelFromUserId")
					end
				end)
			end):andThen(
			function(model)
				callBack(model)
			end)
		end)(store)
	end
end

return GetCharacterModelFromUserId