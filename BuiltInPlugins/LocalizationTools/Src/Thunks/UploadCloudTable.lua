--[[
	Upload Selected CSV to Cloud Localization Table
]]

local LocalizationService = game:GetService("LocalizationService")
local HttpService = game:GetService("HttpService")

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)
local Http = Framework.Http
local Promise = Framework.Util.Promise

local SetIsBusy = require(Plugin.Src.Actions.SetIsBusy)
local SetMessage = require(Plugin.Src.Actions.SetMessage)
local UploadDialogContent = require(Plugin.Src.Components.UploadDialogContent)
local ErrorDialog = require(Plugin.Src.Components.ErrorDialog)
local WarningDialog = require(Plugin.Src.Components.WarningDialog)
local DownloadCloudTable = require(Plugin.Src.Thunks.DownloadCloudTable)
local DEPRECATED_RbxEntriesToWebEntries = require(Plugin.Src.Util.DEPRECATED_RbxEntriesToWebEntries)
local RbxEntriesToWebEntries = require(Plugin.Src.Util.RbxEntriesToWebEntries)
local PatchInfo = require(Plugin.Src.Util.PatchInfo)
local isEmpty = require(Plugin.Src.Util.isEmpty)
local ValidateCloudTable = require(Plugin.Src.Util.ValidateCloudTable)

local UPLOAD_DIALOG_SIZE = Vector2.new(300, 370)
local ERROR_DIALOG_SIZE = Vector2.new(500, 200)

local FFlagLocalizationToolsCloudTableUploadErrors = game:GetFastFlag("LocalizationToolsCloudTableUploadErrors")

local FFlagLocalizationToolsPluginInvalidEntryIdentifierMessageEnabled
	= game:GetFastFlag("LocalizationToolsPluginInvalidEntryIdentifierMessageEnabled")

local FFlagSwitchLocTablesAssetGenerationRequestToLocTablesAPI
	= game:DefineFastFlag("SwitchLocTablesAssetGenerationRequestToLocTablesAPI", false)

local FFlagLocalizationToolsAllowUploadZhCjv = game:GetFastFlag("LocalizationToolsAllowUploadZhCjv")

local function makeDispatchErrorMessageFunc(store, localization)
	return function()
		store:dispatch(SetIsBusy(false))
		store:dispatch(SetMessage(localization:getText("MessageFrame", "UploadFailedMessage")))
	end
end

local function getGameSupportedLanguages(request)
	local languageSet = {}
	request:makeRequest():andThen(
		function(response)
			if response and response.responseCode == Http.StatusCodes.OK then
				for _, languageInfo in ipairs(response.responseBody.data) do
					languageSet[languageInfo.languageCode] = true
				end
			else
				return
			end
		end,
		function()
			return
		end):await()

	return languageSet
end

local function getGameSourceLanguage(request)
	local sourceLanguage
	request:makeRequest():andThen(
		function(response)
			if response and response.responseCode == Http.StatusCodes.OK then
				sourceLanguage = response.responseBody.languageCode or ""
			end
		end,
		function()
		end):await()
	return sourceLanguage
end

local function patchSupportedLanguages(api, gameId, languagesList)
	local requestBody = {}
	for languageCode, _ in pairs(languagesList) do
		local item = {}
		item.languageCodeType = "Language"
		item.languageCode = languageCode
		item.delete = false
		table.insert(requestBody, item)
	end
	local body = HttpService:JSONEncode(requestBody)
	local request = api.GameInternationalization.V1.SupportedLanguages.Games.patch(gameId, body)
	local success
	request:makeRequest():andThen(
		function(response)
			if response.responseCode == Http.StatusCodes.OK then
				success = true
			else
				success = false
			end
		end,
		function()
			success = false
		end):await()
	return success
end

local uploadErrorHandlerTable = {
	["38"] = function(item, output)
		if item.identifier == nil then
			return
		end

		if output["38"] == nil then
			output["38"] = {}
		end

		table.insert(output["38"], item.identifier)
	end,
	["43"] = function(item, output)
		if item.translations == nil then
			return
		end

		if output["43"] == nil then
			output["43"] = {}
		end
		for _, translation in pairs(item.translations) do
			table.insert(output["43"], translation)
		end
	end,
}

local function patchCloudTable(api, tableId, gameId, patchInfo, localization)
	local patchChunks = PatchInfo.SplitByLimits(
		patchInfo.makePatch(),
		game:GetFastInt("LocalizationTableUploadRowMax"),
		game:GetFastInt("LocalizationTableUploadTranslationMax"))

	if isEmpty(patchChunks) then
		return true
	end

	local requests = {}
	for _, chunk in pairs(patchChunks) do
		local body = HttpService:JSONEncode(chunk)
		table.insert(requests, api.LocalizationTables.V1.LocalizationTable.tables(tableId, gameId, body):makeRequest())
	end

	return Promise.all(requests):andThen(
		function(responses)
			if FFlagLocalizationToolsPluginInvalidEntryIdentifierMessageEnabled then
				local invalidEntries = {}
				for _, res in pairs(responses) do
					if res.responseBody ~= nil and next(res.responseBody) ~= nil
						and res.responseBody.failedEntriesAndTranslations ~= nil
						and next(res.responseBody.failedEntriesAndTranslations) then

						for _, item in pairs(res.responseBody.failedEntriesAndTranslations) do
							if item.error then
								local errorHandler = uploadErrorHandlerTable[tostring(item.error.errorCode)]
								if errorHandler then
									errorHandler(item, invalidEntries)
								end
							end
						end
					end
				end
				if next(invalidEntries) then
					local errorMessageMap = {
						["38"] = localization:getText("UploadDialogContent", "InvalidIdentifier"),
						["43"] = localization:getText("UploadDialogContent", "InvalidTranslation"),
					}
					warn(localization:getText("UploadDialogContent", "UploadCompleteWithInvalidEntries"))
					for key, value in pairs(invalidEntries) do
						print(errorMessageMap[key])
						print(value)
					end
				end
			end
			return true
		end,
		function()
			return false
		end):await()
end

local function requestGenerateAssets(api, gameId)
	local request
	if FFlagSwitchLocTablesAssetGenerationRequestToLocTablesAPI then
		request = api.LocalizationTables.V1.Games.assetsGenerationRequest(gameId)
	else
		request = api.GameInternationalization.V1.LocalizationTable.Games.DEPRECATED_assetsGenerationRequest(gameId)
	end
	if FFlagLocalizationToolsAllowUploadZhCjv then
		request:makeRequest():andThen(
			function()
			end,
			function()
			end):await()
	else
		request:makeRequest():await()
	end
end

local function makeRenderDialogContent(patchInfo)
	return function(okCallback, cancelCallback)
		return Roact.createElement(UploadDialogContent, {
			PatchInfo = patchInfo,
			OkCallback = okCallback,
			CancelCallback = cancelCallback,
		})
	end
end

local function makeErrorDialogContent(text)
	return function(okCallback, cancelCallback)
		return Roact.createElement(ErrorDialog, {
			OkCallback = okCallback,
			CancelCallback = cancelCallback,
			Text = text,
		})
	end
end

local function makeWarningDialogContent(text)
	return function(okCallback, cancelCallback)
		return Roact.createElement(WarningDialog, {
			OkCallback = okCallback,
			CancelCallback = cancelCallback,
			Text = text,
		})
	end
end

return function(api, localization, analytics, showDialog, isReplace)
	return function(store)
		local dispatchErrorMessage = makeDispatchErrorMessageFunc(store, localization)

		local curState = store:getState()
		local isBusy = curState.CloudTable.IsBusy
		if isBusy then
			warn(localization:getText("MessageFrame", "BusyMessage"))
			return
		end

		store:dispatch(SetIsBusy(true))

		-- 1. prompt open csv
		store:dispatch(
			SetMessage(localization:getText("MessageFrame", "OpenCSVFileMessage")))
		local newTable
		local openCSVSuccess, openCSVResult = pcall(function()
			newTable = LocalizationService:PromptUploadCSVToGameTable()
		end)
		if not openCSVSuccess or newTable == nil then
			dispatchErrorMessage()
			warn(openCSVResult)
			return
		end

		if FFlagLocalizationToolsCloudTableUploadErrors then
			-- 1.0 validate CSV against backend rules
			if isReplace and ValidateCloudTable.isTableEmpty(newTable:GetEntries()) then
				dispatchErrorMessage()
				local confirm = showDialog(localization:getText("UploadTable", "EmptyCSVDialogTitle"), ERROR_DIALOG_SIZE, makeWarningDialogContent(localization:getText("UploadTable", "EmptyCSVWarning"))):await()
				if not confirm then
					return
				end
			end

			local invalidTable, errors = ValidateCloudTable.tableContainsInvalidEntries(newTable:GetEntries(), localization)
			if invalidTable then
				dispatchErrorMessage()
				for index, error in ipairs(errors) do
					warn(error)
				end
				showDialog(localization:getText("UploadTable", "InvalidTableDialogTitle"), ERROR_DIALOG_SIZE, makeErrorDialogContent(localization:getText("UploadTable", "InvalidEntryDialogError"))):await()
				return
			end
		end
		-- 2. compute patch
		store:dispatch(
			SetMessage(localization:getText("MessageFrame", "ComputingPatchMessage")))
		-- 2.0 get game source language
		local gameSourceLanguage
		if FFlagLocalizationToolsAllowUploadZhCjv then
			gameSourceLanguage = getGameSourceLanguage(
				api.GameInternationalization.V1.SourceLanguage.Games.get(game.GameId))
			if gameSourceLanguage == nil then
				dispatchErrorMessage()
				warn(localization:getText("UploadTable", "GetGameSourceLanguageFailed"))
				return
			end
		end
		-- 2.1 get game supported languages
		local gameSupportedLanguages = getGameSupportedLanguages(
			api.GameInternationalization.V1.SupportedLanguages.Games.get(game.GameId))
		if gameSupportedLanguages == nil then
			dispatchErrorMessage()
			warn(localization:getText("UploadTable", "GetSupportedLanguagesFailedMessage"))
			return
		end
		-- 2.2 get current cloud localization table
		local curTableId = curState.PluginMetadata.CloudTableId
		local curCloudTable = DownloadCloudTable.Download(api, localization, curTableId)
		if curCloudTable == nil then
			dispatchErrorMessage()
			warn(localization:getText("UploadTable", "GetCloudTableFailed"))
			return
		end
		-- 2.3 make patch
		local curCloudTableInfo
		local newTableInfo
		local patchInfo
		if FFlagLocalizationToolsAllowUploadZhCjv then
			local allLanguages = curState.PluginMetadata.AllLanguages
			local localesToLanguages = curState.PluginMetadata.LocalesToLanguages
			curCloudTableInfo = RbxEntriesToWebEntries(
				curCloudTable:GetEntries(), allLanguages, localesToLanguages)
			newTableInfo = RbxEntriesToWebEntries(
				newTable:GetEntries(), allLanguages, localesToLanguages, gameSupportedLanguages)

			patchInfo = PatchInfo.DiffTables(
				"MyLocalizationTable",
				curCloudTableInfo.entries,
				newTableInfo.entries,
				isReplace,
				gameSourceLanguage,
				localesToLanguages,
				localization
			)
		else
			local allLanguagesCodes = curState.PluginMetadata.DEPRECATED_AllLanguageCodes
			curCloudTableInfo = DEPRECATED_RbxEntriesToWebEntries(
				curCloudTable:GetEntries(), allLanguagesCodes)
			newTableInfo = DEPRECATED_RbxEntriesToWebEntries(
				newTable:GetEntries(), allLanguagesCodes, gameSupportedLanguages)

			patchInfo = PatchInfo.DiffTables(
				"MyLocalizationTable",
				curCloudTableInfo.entries,
				newTableInfo.entries,
				isReplace
			)
		end

		patchInfo.totalRows = newTableInfo.totalRows
		patchInfo.totalTranslations = newTableInfo.totalTranslations
		patchInfo.supportedLocales = newTableInfo.supportedLocales
		patchInfo.unsupportedLocales = newTableInfo.unsupportedLocales
		patchInfo.includeDeletes = isReplace
		patchInfo.newLanguages = newTableInfo.newLanguages
		patchInfo.newLanguagesSet = newTableInfo.newLanguagesSet

		-- 3. show dialog
		store:dispatch(
			SetMessage(localization:getText("MessageFrame", "ConfirmUploadMessage")))
		local dialogTitle = localization:getText("UploadDialogContent", "ConfirmUploadDialogTitle")
		local confirm
		if FFlagLocalizationToolsCloudTableUploadErrors then
			confirm = showDialog(dialogTitle, UPLOAD_DIALOG_SIZE, makeRenderDialogContent(patchInfo)):await()
		else
			confirm = showDialog(dialogTitle, makeRenderDialogContent(patchInfo)):await()
		end
		if not confirm then
			store:dispatch(SetIsBusy(false))
			store:dispatch(
				SetMessage(localization:getText("MessageFrame", "UploadCanceledMessage")))
			return
		end

		-- 4. send patch
		store:dispatch(
			SetMessage(localization:getText("MessageFrame", "UploadingPatchMessage")))

		if patchInfo.newLanguagesSet ~= nil and not isEmpty(patchInfo.newLanguagesSet) then
		-- 4.1 patch new supported languages
			local patchLanguagesSuccess = patchSupportedLanguages(api, game.GameId, patchInfo.newLanguagesSet)
			if not patchLanguagesSuccess then
				dispatchErrorMessage()
				warn(localization:getText("UploadTable", "PatchSupportedLangugesFailed"))
				return
			end
		end
		-- 4.2 patch cloud table
		local patchCloudTableSuccess = patchCloudTable(api, curTableId, game.GameId, patchInfo, localization)
		if not patchCloudTableSuccess then
			dispatchErrorMessage()
			warn(localization:getText("UploadTable", "PatchCloudTableFailed"))
			return
		end

		-- 5. success
		store:dispatch(SetIsBusy(false))
		store:dispatch(
			SetMessage(localization:getText("MessageFrame", "UploadCompletedMessage")))
		local buttonName = isReplace and "replace" or "update"
		analytics:reportUploadTable(patchInfo, buttonName)

		requestGenerateAssets(api, game.GameId)
	end
end
