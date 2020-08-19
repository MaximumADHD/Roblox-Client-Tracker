--[[
	Download Cloud Localization Table
]]

local LocalizationService = game:GetService("LocalizationService")

local Plugin = script.Parent.Parent.Parent
local Http = require(Plugin.Packages.Framework.Http)

local SetIsBusy = require(Plugin.Src.Actions.SetIsBusy)
local SetMessage = require(Plugin.Src.Actions.SetMessage)
local isEmpty = require(Plugin.Src.Util.isEmpty)

local FFlagLocalizationToolsFixHttpFailureBacktrace = game:GetFastFlag("LocalizationToolsFixHttpFailureBacktrace")

local function makeDispatchErrorMessageFunc(store, localization)
	return function()
		store:dispatch(SetIsBusy(false))
		store:dispatch(SetMessage(localization:getText("MessageFrame", "DownloadFailedMessage")))
	end
end

local function updateWebEntries(data, webEntries)
	if type(data) ~= "table" then
		return false
	end
	for _, item in ipairs(data) do
		if item.identifier == nil then
			return false
		end
		local entry = {Values = {}}
		entry.Key = item.identifier.key or ""
		entry.Source = item.identifier.source or ""
		entry.Context = item.identifier.context or ""
		entry.Exmple = item.metadata and item.metadata.example or ""
		if not isEmpty(item.translations) then
			for _, translation in ipairs(item.translations) do
				if type(translation.locale) ~= "string" then
					return false
				end
				entry.Values[translation.locale] = translation.translationText or ""
			end
		end
		table.insert(webEntries, entry)
	end
	return true
end

local function download(api, localization, tableId)
	local webEntries = {}
	local cursor = ""

	while cursor do
		local request = api.LocalizationTables.V1.LocalizationTable.Tables.entries(tableId, cursor, game.GameId)
		if FFlagLocalizationToolsFixHttpFailureBacktrace then
			request:makeRequest():andThen(
				function(response)
					if response and response.responseCode == Http.StatusCodes.OK then
						local success = updateWebEntries(response.responseBody.data, webEntries)
						if not success then
							warn(localization:getText("DownloadTable", "GetCloudTableFailed"))
							return
						end
						cursor = response.responseBody.nextPageCursor
					else
						warn(localization:getText("DownloadTable", "GetCloudTableFailed"))
						return
					end
				end,
				function()
					warn(localization:getText("DownloadTable", "GetCloudTableFailed"))
					return
				end):await()
		else
			local responseTable = request:makeRequest():await()
			if responseTable and responseTable.responseCode == Http.StatusCodes.OK then
				local success = updateWebEntries(responseTable.responseBody.data, webEntries)
				if not success then
					warn(localization:getText("DownloadTable", "GetCloudTableFailed"))
					return
				end
				cursor = responseTable.responseBody.nextPageCursor
			else
				warn(localization:getText("DownloadTable", "GetCloudTableFailed"))
				return
			end
		end
	end

	local localizationTable = Instance.new("LocalizationTable")
	local success, _ = pcall(function()
		localizationTable:SetEntries(webEntries)
	end)
	if not success then
		warn(localization:getText("DownloadTable", "SetEntriesFailed"))
		return
	else
		return localizationTable
	end
end

local function downloadAndSave(api, localization, analytics, tableId)
	return function(store)
		local dispatchErrorMessage = makeDispatchErrorMessageFunc(store, localization)

		local curState = store:getState()
		local isBusy = curState.CloudTable.IsBusy
		if isBusy then
			warn(localization:getText("MessageFrame", "BusyMessage"))
			return
		end

		store:dispatch(SetIsBusy(true))
		store:dispatch(SetMessage(localization:getText("MessageFrame", "DownloadingTableMessage")))

		local cloudTable = download(api, localization, tableId)
		if cloudTable == nil then
			dispatchErrorMessage()
			return
		end

		store:dispatch(SetMessage(localization:getText("MessageFrame", "SelectCSVFileMessage")))
		local success, result = pcall(function()
			LocalizationService:PromptDownloadGameTableToCSV(cloudTable)
		end)
		if not success then
			dispatchErrorMessage()
			warn(result)
			return
		end

		store:dispatch(SetIsBusy(false))
		store:dispatch(SetMessage(localization:getText("MessageFrame", "TableWrittenToFileMessage")))
		analytics:reportDownloadTable(cloudTable, "download", curState.PluginMetadata.AllLanguageCodes)
		return
	end
end

return {
	Download = download,
	DownloadAndSave = downloadAndSave,
}