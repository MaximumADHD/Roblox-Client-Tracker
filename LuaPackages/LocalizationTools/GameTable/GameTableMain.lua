local LocalizationService = game:GetService("LocalizationService")
local Promise = require(script.Parent.Parent.Promise)
local RbxEntriesToWebEntries = require(script.Parent.RbxEntriesToWebEntries)
local PatchInfo = require(script.Parent.PatchInfo)

local MakeWebTableInterface = require(script.Parent.WebTableInterface)

return function(userId)
	local WebTableInterface = MakeWebTableInterface(userId)

	local function ComputePatch(gameId, newLocalizationTable, includeDeletes)
		return Promise.new(function(resolve, reject)
			Promise.all({
				WebTableInterface.GetAllSupportedLanguages(),
				WebTableInterface.GetGameSupportedLanguages(gameId),
			}):andThen(function(results)
				local allSupportedLanuguagesSet = results[1]
				local gameSupportedLanuguagesSet = results[2]

				WebTableInterface.DownloadGameTable(gameId):andThen(
					function(currentLocalizationTable)
						local currentTableEntryInfo = RbxEntriesToWebEntries(currentLocalizationTable:GetEntries(), allSupportedLanuguagesSet)
						if currentTableEntryInfo.errorMessage then
							reject(currentTableEntryInfo.errorMessage)
							return
						end

						local newTableEntryInfo = RbxEntriesToWebEntries(newLocalizationTable:GetEntries(), allSupportedLanuguagesSet, gameSupportedLanuguagesSet)
						if newTableEntryInfo.errorMessage then
							reject(newTableEntryInfo.errorMessage)
							return
						end

						--[[The difference between an update and a replace is really just
							the presence of entries/translations with "delete":true]]
						local patchInfo = PatchInfo.DiffTables(
							"MyLocalizationTable",
							currentTableEntryInfo.entries,
							newTableEntryInfo.entries,
							includeDeletes)

						patchInfo.totalRows = newTableEntryInfo.totalRows
						patchInfo.totalTranslations = newTableEntryInfo.totalTranslations
						patchInfo.supportedLocales = newTableEntryInfo.supportedLocales
						patchInfo.unsupportedLocales = newTableEntryInfo.unsupportedLocales
						patchInfo.includeDeletes = includeDeletes
						patchInfo.newLanguages = newTableEntryInfo.newLanguages
						patchInfo.newLanguagesSet = newTableEntryInfo.newLanguagesSet
						resolve(patchInfo)
					end,
					reject
				)
			end)
		end)
	end

	local function ComputeReplacePatch(gameId, newLocalizationTable)
		return ComputePatch(gameId, newLocalizationTable, true)
	end

	local function ComputeUpdatePatch(gameId, newLocalizationTable)
		return ComputePatch(gameId, newLocalizationTable, false)
	end

	return {
		OpenCSV = Promise.wrapAsync(function()
			return LocalizationService:PromptUploadCSVToGameTable()
		end),
		SaveCSV = Promise.wrapAsync(function(table)
			LocalizationService:PromptDownloadGameTableToCSV(table)
		end),
		ComputeReplacePatch = ComputeReplacePatch,
		ComputeUpdatePatch = ComputeUpdatePatch,
		UploadPatch = WebTableInterface.UploadPatch,
		DownloadGameTable = WebTableInterface.DownloadGameTable,
		CheckTableAvailability = WebTableInterface.CheckTableAvailability,
		GameIdChangedSignal = game:GetPropertyChangedSignal("GameId"),
		GetAllSupportedLanguages = WebTableInterface.GetAllSupportedLanguages,
		RequestAssetGeneration = WebTableInterface.RequestAssetGeneration,
	}
end
