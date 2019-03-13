local LocalizationService = game:GetService("LocalizationService")
local Promise = require(script.Parent.Parent.Promise)
local RbxEntriesToWebEntries = require(script.Parent.RbxEntriesToWebEntries)
local PatchInfo = require(script.Parent.PatchInfo)

local MakeWebTableInterface = require(script.Parent.WebTableInterface)

return function(userId)
	local WebTableInterface = MakeWebTableInterface(userId)

	local function ComputePatch(gameId, newLocalizationTable)
		return Promise.new(function(resolve, reject)
			WebTableInterface.DownloadGameTable(gameId):andThen(
				function(currentLocalizationTable)
					local currentTableEntryInfo = RbxEntriesToWebEntries(currentLocalizationTable:GetEntries())
					if currentTableEntryInfo.errorMessage then
						reject(currentTableEntryInfo.errorMessage)
						return
					end

					local newTableEntryInfo = RbxEntriesToWebEntries(newLocalizationTable:GetEntries())
					if newTableEntryInfo.errorMessage then
						reject(newTableEntryInfo.errorMessage)
						return
					end

					local patchInfo = PatchInfo.DiffTables(
						"MyLocalizationTable",
						currentTableEntryInfo.entries,
						newTableEntryInfo.entries)

					patchInfo.totalRows = newTableEntryInfo.totalRows
					patchInfo.totalTranslations = newTableEntryInfo.totalRows
					patchInfo.supportedLocales = newTableEntryInfo.supportedLocales
					patchInfo.unsupportedLocales = newTableEntryInfo.unsupportedLocales

					resolve(patchInfo)
				end,
				reject
			)
		end)
	end

	return {
		OpenCSV = Promise.wrapAsync(function()
			return LocalizationService:PromptUploadCSVToGameTable()
		end),
		SaveCSV = Promise.wrapAsync(function(table)
			LocalizationService:PromptDownloadGameTableToCSV(table)
		end),
		ComputePatch = ComputePatch,
		UploadPatch = WebTableInterface.UploadPatch,
		DownloadGameTable = WebTableInterface.DownloadGameTable,
		UpdateGameTableInfo = WebTableInterface.UpdateGameTableInfo,
		CheckTableAvailability = WebTableInterface.CheckTableAvailability,
		GameIdChangedSignal = game:GetPropertyChangedSignal("GameId"),
	}
end
