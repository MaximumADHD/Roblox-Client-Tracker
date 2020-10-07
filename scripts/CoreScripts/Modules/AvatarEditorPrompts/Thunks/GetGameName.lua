local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local HttpRbxApiService = game:GetService("HttpRbxApiService")
local LocalizationService = game:GetService("LocalizationService")

local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local httpRequest = require(CorePackages.AppTempCommon.Temp.httpRequest)

local httpImpl = httpRequest(HttpRbxApiService)

local Thunks = script.Parent
local AvatarEditorPrompts = Thunks.Parent
local GameNameFetched = require(AvatarEditorPrompts.Actions.GameNameFetched)

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
				return store:dispatch(GameNameFetched(localeGameName))
			end

			local sourceGameName = gameNameLocaleMap[sourceLocale]
			if sourceGameName then
				return store:dispatch(GameNameFetched(sourceGameName))
			end
		end):catch(function()
			warn("Unable to get game name for Avatar Editor Prompts")
		end)
	end)()
end