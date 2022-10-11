--[[
	Get and store plugin metadata
]]

local Plugin = script.Parent.Parent.Parent
local Http = require(Plugin.Packages.Framework).Http

local LoadLanguagesAndLocalesInfo = require(Plugin.Src.Actions.LoadLanguagesAndLocalesInfo)
local LoadManageTranslationPermission = require(Plugin.Src.Actions.LoadManageTranslationPermission)
local SetCloudTableId = require(Plugin.Src.Actions.SetCloudTableId)

local ACCEPTED_ROLES = {
	owner = true,
	collaborator = true,
	translator = true,
}

local function getLanguagesAndLocalesInfo(api, localization)
	return function(store)
		local request = api.Locale.V1.locales()
		request:makeRequest():andThen(
			function(response)
				local allLanguages = {}
				local localesToLanguages = {}
				for _, localeInfo in ipairs(response.responseBody.data) do
					if localeInfo.isEnabledForInGameUgc then
						allLanguages[localeInfo.locale.language.languageCode] = true
					end
				end
				-- currently we only wanna add zh-cjv as allowed locale
				localesToLanguages["zh-cjv"] = "zh-hans"
				store:dispatch(LoadLanguagesAndLocalesInfo(allLanguages, localesToLanguages))
			end,
			function()
				warn(localization:getText("PluginMetadata", "GetAllLocalesFailed"))
			end)
	end
end

local function getManageTranslationPermission(api, localization)
	return function(store)
		local request = api.TranslationRoles.V1.GameLocalizationRoles.Games.CurrentUser.roles(game.GameId)

		store:dispatch(LoadManageTranslationPermission(false))
		return request:makeRequest():andThen(
			function(response)
				for _, role in ipairs(response.responseBody.data) do
					if ACCEPTED_ROLES[role] then
						store:dispatch(LoadManageTranslationPermission(true))
						return true
					end
				end
				return false
			end,
			function()
				warn(localization:getText("PluginMetadata", "GetPermissionFailedMessage"))
				return false
			end):await()
	end
end

local function getOrCreateCloudTable(api, localization)
	return function(store)
		local request = api.GameInternationalization.V1.AutoLocalization.games(game.GameId)
		request:makeRequest():andThen(
			function(response)
				if response and response.responseCode == Http.StatusCodes.OK then
					store:dispatch(SetCloudTableId(response.responseBody.autoLocalizationTableId))
				else
					warn(localization:getText("PluginMetadata", "GetOrCreateCloudTableFailedMessage"))
				end
			end,
			function()
				warn(localization:getText("PluginMetadata", "GetOrCreateCloudTableFailedMessage"))
			end)
	end
end

local function onGameIdChanged(api, localization)
	return function(store)
		if game.GameId == 0 then
			store:dispatch(LoadManageTranslationPermission(false))
			store:dispatch(SetCloudTableId(""))
		else
			store:dispatch(
				getManageTranslationPermission(api, localization))
			store:dispatch(
				getOrCreateCloudTable(api, localization))
		end
	end
end

local function getAll(api, localization)
	return function(store)
		store:dispatch(getLanguagesAndLocalesInfo(api, localization))
		if game.GameId ~= 0 then
			store:dispatch(
				getManageTranslationPermission(api, localization))
			store:dispatch(
				getOrCreateCloudTable(api, localization))
		end
	end
end

return {
	GetAll = getAll,
	OnGameIdChanged = onGameIdChanged,
	-- Expose for tests
	GetManageTranslationPermission = getManageTranslationPermission,
}
