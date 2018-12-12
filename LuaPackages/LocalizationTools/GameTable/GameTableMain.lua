local LocalizationService = game:GetService("LocalizationService")
local Promise = require(script.Parent.Parent.Promise)
local RbxEntriesToWebEntries = require(script.Parent.RbxEntriesToWebEntries)

local StudioLocalizationSelectiveUpload = settings():GetFFlag("StudioLocalizationSelectiveUpload")
local PatchInfo
if StudioLocalizationSelectiveUpload then
	PatchInfo = require(script.Parent.PatchInfo)
else
	PatchInfo = require(script.Parent.PatchInfoDEPRECATED)
end

local MakeWebTableInterface = require(script.Parent.WebTableInterface)

return function(userId)
	local WebTableInterface = MakeWebTableInterface(userId)

	local function ComputePatch(newLocalizationTable)
		return Promise.new(function(resolve, reject)
			WebTableInterface.DownloadGameTable():andThen(
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
		OpenCSV = Promise.promisify(function()
			return LocalizationService:PromptUploadCSVToGameTable()
		end),
		SaveCSV = Promise.promisify(function(table)
			LocalizationService:PromptDownloadGameTableToCSV(table)
		end),
		ComputePatch = ComputePatch,
		UploadPatch = WebTableInterface.UploadPatch,
		DownloadGameTable = WebTableInterface.DownloadGameTable,
		UpdateGameTableInfo = WebTableInterface.UpdateGameTableInfo,
		SetAutoscraping = WebTableInterface.SetAutoscraping,
		PlaceIdChangedSignal = game:GetPropertyChangedSignal("PlaceId"),
	}
end
