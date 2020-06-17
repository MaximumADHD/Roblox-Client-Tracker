local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local HttpRbxApiService = game:GetService("HttpRbxApiService")
local LocalizationService = game:GetService("LocalizationService")

local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local httpRequest = require(CorePackages.AppTempCommon.Temp.httpRequest)

local httpImpl = httpRequest(HttpRbxApiService)

local Thunks = script.Parent
local TopBar = Thunks.Parent
local SetGameName = require(TopBar.Actions.SetGameName)

local GetGameNameAndDescription = require(RobloxGui.Modules.Common.GetGameNameAndDescription)

return function(store)
	coroutine.wrap(function()
		if game.GameId == 0 then
			return
		end

		GetGameNameAndDescription(httpImpl, game.GameId):andThen(function(
			gameNameLocaleMap, gameDescriptionsLocaleMap, sourceLocale)

			local localeGameName = gameNameLocaleMap[LocalizationService.RobloxLocaleId]
			if localeGameName then
				return store:dispatch(SetGameName(localeGameName))
			end

			local sourceGameName = gameNameLocaleMap[sourceLocale]
			if sourceGameName then
				return store:dispatch(SetGameName(sourceGameName))
			end
		end):catch(function()
			warn("Unable to get game name for Gamepad Menu")
		end)
	end)()
end