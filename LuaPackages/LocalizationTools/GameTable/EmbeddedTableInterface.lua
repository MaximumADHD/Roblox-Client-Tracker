local LocalizationService = game:GetService("LocalizationService")
local AnalyticsService = game:GetService("RbxAnalyticsService")
local StudioService = nil
pcall(function() StudioService = game:GetService('StudioService') end)

local MESSAGE_NO_FILE_SELECTED = "No file selected"

local function getUserId()
	local success, _ = pcall(function()
		return StudioService:GetUserId()
	end)

	if not success then
		AnalyticsService:ReportCounter("LocalizationTools_StudioServiceCalledOutsideStudio")
	end
	return 0
end

local function reportButtonPress(btnName, status)
	local target = "studio"
	local context = "localizationPlugin"
	local eventName = "buttonPressed"
	local args = {
		uid = getUserId(),
		gameId = game.GameId,
		placeId = game.PlaceId,

		btnName = btnName,
		status = status,
	}

	AnalyticsService:SendEventDeferred(target, context, eventName, args)
end

local function reportTextScraperButtonPress(status)
	reportButtonPress("textCapture", status)
end

local function reportExportButtonPress(result)
	reportButtonPress("export", result)
end

local function reportImportButtonPress(result)
	reportButtonPress("import", result)
end

local function toggleTextScraperEnabled()
	if not LocalizationService.IsTextScraperRunning then
		LocalizationService:StartTextScraper()
		reportTextScraperButtonPress("start")
	else
		LocalizationService:StopTextScraper()
		reportTextScraperButtonPress("stop")
	end
end

local function promptExportToCSVs()
	local success, message = pcall(
		function()
			return LocalizationService:PromptExportToCSVs()
		end
	)
	if success then
		reportExportButtonPress("success")
	else
		if message == MESSAGE_NO_FILE_SELECTED then
			reportExportButtonPress("canceled")
		else
			reportExportButtonPress("error")
		end
	end
end

local function promptImportFromCSVs()
	local success, message = pcall(
		function()
			return LocalizationService:PromptImportFromCSVs()
		end
	)
	if success then
		reportImportButtonPress("success")
	else
		if message == MESSAGE_NO_FILE_SELECTED then
			reportImportButtonPress("canceled")
		else
			reportImportButtonPress("error")
		end
	end
end

return {
	ToggleTextScraperEnabled = toggleTextScraperEnabled,
	PromptExportToCSVs = promptExportToCSVs,
	PromptImportFromCSVs = promptImportFromCSVs,
}