--[[
	Utils for managing embedded tables
]]

local LocalizationService = game:GetService("LocalizationService")

local EmbeddedTableUtil = {}

local MESSAGE_NO_FILE_SELECTED = "No file selected"

function EmbeddedTableUtil.toggleTextScraperEnabled(analytics)
	if not LocalizationService.IsTextScraperRunning then
		LocalizationService:StartTextScraper()
		analytics:reportButtonPress("textCapture", "start")
	else
		LocalizationService:StopTextScraper()
		analytics:reportButtonPress("textCapture", "stop")
	end
end

function EmbeddedTableUtil.promptExportToCSVs(analytics)
	local success, message = pcall(function()
		return LocalizationService:PromptExportToCSVs()
	end)
	if success then
		analytics:reportButtonPress("export", "success")
	else
		if message == MESSAGE_NO_FILE_SELECTED then
			analytics:reportButtonPress("export", "canceled")
		else
			analytics:reportButtonPress("export", "error")
		end
	end
end

function EmbeddedTableUtil.promptImportFromCSVs(analytics)
	local success, message = pcall(function()
		return LocalizationService:PromptImportFromCSVs()
	end)
	if success then
		analytics:reportButtonPress("import", "success")
	else
		if message == MESSAGE_NO_FILE_SELECTED then
			analytics:reportButtonPress("import", "canceled")
		else
			analytics:reportButtonPress("import", "error")
		end
	end
end

return EmbeddedTableUtil