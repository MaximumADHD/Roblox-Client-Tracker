
if not settings():GetFFlag("StudioEnablePlayerLocaleViewPlugin3") then
	local runService = game:GetService("RunService")
	local localizationService = game:GetService("LocalizationService")
	local enabled = runService:IsEdit()

	local toolbar = plugin:CreateToolbar("Localization Tools")

	function getTextScraperAsset()
		return localizationService.IsTextScraperRunning 
			and "rbxasset://textures/localizationUIScrapingOn.png" 
			or "rbxasset://textures/localizationUIScrapingOff.png"
	end

	local captureButton = nil
	captureButton = toolbar:CreateButton(
		"Text Capture",
		"Enable untranslated text capture",
		getTextScraperAsset()
	)

	local exportButton = toolbar:CreateButton(
		"Export",
		"Export LocalizationTables under LocalizationService to CSV files",
		"rbxasset://textures/localizationExport.png"
	)

	local importButton = toolbar:CreateButton(
		"Import",
		"Import CSV files to LocalizationTables under LocalizationService",
		"rbxasset://textures/localizationImport.png"
	)

	local forceLocales = { {"en-us", "English"}, {"es-es", "Spanish"} }
	local forceLocaleButtons = {}

	local testToolbar = plugin:CreateToolbar("Test Language")
	for _, locale in pairs(forceLocales) do
		local localeId = locale[1]
		local commonName = locale[2]
		local button = testToolbar:CreateButton(
			commonName,
			"LocalizationService.RobloxLocaleId will return \""..localeId.."\" and in-game text will displayed in "..commonName,
			"rbxasset://textures/localizationTarget"..commonName..".png"
		)
		if localizationService.RobloxForcePlayModeRobloxLocaleId == localeId then
			button:SetActive(true)
		end
		button.Enabled = enabled
		button.Click:connect(function()
			if localizationService.RobloxForcePlayModeGameLocaleId ~= localeId then
				localizationService.RobloxForcePlayModeGameLocaleId = localeId
				print("Forcing game locale to \""..localizationService.RobloxForcePlayModeGameLocaleId.."\"")
				button:SetActive(true)
			else
				localizationService.RobloxForcePlayModeGameLocaleId = ""
				print("Reverted game locale to default")
				for _, b in pairs(forceLocaleButtons) do
					b:SetActive(false)
				end
			end

			if localizationService.RobloxForcePlayModeRobloxLocaleId ~= localeId then
				localizationService.RobloxForcePlayModeRobloxLocaleId = localeId
				print("Forcing roblox locale to \""..localizationService.RobloxForcePlayModeRobloxLocaleId.."\"")
				button:SetActive(true)
			else
				localizationService.RobloxForcePlayModeRobloxLocaleId = ""
				print("Reverted roblox locale to default \""..localizationService.RobloxLocaleId.."\"")
				for _, b in pairs(forceLocaleButtons) do
					b:SetActive(false)
				end
			end
		end)

		forceLocaleButtons[localeId] = button
	end

	captureButton.Enabled = enabled
	captureButton.Click:connect(function()
		if not localizationService.IsTextScraperRunning then
			localizationService:StartTextScraper()
		else
			localizationService:StopTextScraper()
		end
		captureButton.Icon = getTextScraperAsset()
	end)

	exportButton.Enabled = enabled
	exportButton.Click:connect(function()
		localizationService:PromptExportToCSVs()
	end)

	importButton.Enabled = enabled
	importButton.Click:connect(function()
		localizationService:PromptImportFromCSVs()
	end)
end
