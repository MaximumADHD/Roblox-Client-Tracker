local LocalizationService = game:GetService("LocalizationService")
local AnalyticsService = game:GetService("RbxAnalyticsService")
local IsEdit = require(script.Parent.IsEdit)

local LocalizationTools = require(script.Parent.Components.LocalizationTools)
local MakeShowDialog = require(script.Parent.ShowDialog)
local MakeGameTableMain = require(script.Parent.GameTable.GameTableMain)
local RbxEntriesToWebEntries = require(script.Parent.GameTable.RbxEntriesToWebEntries)
local Roact = require(game:GetService("CorePackages").Roact)

local UseStudioLocaleForForceLocale = settings():GetFFlag("UseStudioLocaleForForceLocale")

local LocalizationToolsPluginV2Enabled = settings():GetFFlag("LocalizationToolsPluginV2Enabled")

local function getTextScraperButtonIconAsset()
	return LocalizationService.IsTextScraperRunning
		and "rbxasset://textures/localizationUIScrapingOn.png"
		or "rbxasset://textures/localizationUIScrapingOff.png"
end

local function reportButtonPress(plugin, btnName, status)
	local target = "studio"
	local context = "localizationPlugin"
	local eventName = "buttonPressed"
	local args = {
		uid = plugin:GetStudioUserId(),
		gameId = game.GameId,
		placeId = game.PlaceId,

		btnName = btnName,
		status = status,
	}

	AnalyticsService:SendEventDeferred(target, context, eventName, args)
end


local function createTextScraperPluginButtons(toolbar)
	local captureButton = toolbar:CreateButton(
		"Text Capture",
		"Start untranslated text capture",
		getTextScraperButtonIconAsset()
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

	return {
		captureButton = captureButton,
		exportButton = exportButton,
		importButton = importButton,
	}
end

-- deprecate with LocalizationToolsPluginV2Enabled
local function createTextScraperControlsEnabled_deprecated(toolbar, plugin)
	local buttons = createTextScraperPluginButtons(toolbar)

	buttons.captureButton.Enabled = true
	buttons.captureButton.Click:Connect(function()
		if not LocalizationService.IsTextScraperRunning then
			LocalizationService:StartTextScraper()
			reportButtonPress(plugin, "textCapture", "start")
		else
			LocalizationService:StopTextScraper()
			reportButtonPress(plugin, "textCapture", "stop")
		end
		buttons.captureButton.Icon = getTextScraperButtonIconAsset()
	end)

	buttons.exportButton.Enabled = true
	buttons.exportButton.Click:Connect(function()
		local success, message = pcall(
			function()
				return LocalizationService:PromptExportToCSVs()
			end
		)
		if success then
			reportButtonPress(plugin, "export", "success")
		else
			if message == "No file selected" then
				reportButtonPress(plugin, "export", "canceled")
			else
				reportButtonPress(plugin, "export", "error")
			end
		end
	end)

	buttons.importButton.Enabled = true
	buttons.importButton.Click:Connect(function()
		local success, message = pcall(
			function()
				return LocalizationService:PromptImportFromCSVs()
			end
		)
		if success then
			reportButtonPress(plugin, "import", "success")
		else
			if message == "No file selected" then
				reportButtonPress(plugin, "import", "canceled")
			else
				reportButtonPress(plugin, "import", "error")
			end
		end
	end)
end

-- deprecate with LocalizationToolsPluginV2Enabled
local function createTextScraperControlsDisabled_deprecated(toolbar)
	local buttons = createTextScraperPluginButtons(toolbar)

	buttons.captureButton.Enabled = false
	buttons.exportButton.Enabled = false
	buttons.importButton.Enabled = false
end


local function createLocalizationToolsPluginButton(toolbar)
	return toolbar:CreateButton(
		"Tools",
		"Hide/show the Localization Testing view",
		"rbxasset://textures/localizationTestingIcon.png")
end

local function reportToolOpened(plugin, openMethod)
	local target = "studio"
	local context = "localizationPlugin"
	local eventName = "toolOpened"
	local args = {
		method = openMethod,
		uid = plugin:GetStudioUserId(),
		gameId = game.GameId,
		placeId = game.PlaceId,
	}

	AnalyticsService:SendEventDeferred(target, context, eventName, args)
end

local function reportUploadPatch(plugin, patchInfo, btnName)
	local target = "studio"
	local context = "localizationPlugin"
	local eventName = "logLocalizationPerfStats"
	local args = {
		uid = plugin:GetStudioUserId(),
		gameId = game.GameId,
		placeId = game.PlaceId,
		btnName = btnName,

		totalRows = patchInfo.totalRows,
		totalTranslations = patchInfo.totalTranslations,
		supportedLocales = patchInfo.supportedLocales,
		unsupportedLocales = patchInfo.unsupportedLocales,
		numChangedTranslations = patchInfo.numChangedTranslations,
		numRemovedTranslations = patchInfo.numRemovedTranslations,
		numAddedTranslations = patchInfo.numAddedTranslations,
		addedSupportedLanguages = patchInfo.newLanguages,
	}

	AnalyticsService:SendEventDeferred(target, context, eventName, args)
end

local function reportDownloadTable(plugin, table, btnName, getAllSuppLanguagesFunc)
	local target = "studio"
	local context = "localizationPlugin"
	local eventName = "logLocalizationPerfStats"

	getAllSuppLanguagesFunc():andThen(
		function(allSupportedLanguagesSet)
			local info = RbxEntriesToWebEntries(table:GetEntries(), allSupportedLanguagesSet)

			local args = {
				uid = plugin:GetStudioUserId(),
				gameId = game.GameId,
				placeId = game.PlaceId,
				btnName = btnName,

				totalRows = info.totalRows,
				totalTranslations = info.totalTranslations,
				supportedLocales = info.supportedLocales,
				unsupportedLocales = info.unsupportedLocales,
			}

			AnalyticsService:SendEventDeferred(target, context, eventName, args)
		end
	)
end

local function processLanguageInfo(origData)
	local languageInfoTable, localeInfoTable = {}, {}

	for langCode, langInfo in pairs(origData) do
		table.insert(languageInfoTable, {
			languageName = langInfo.languageName,
			localeCode = langInfo.localeCode,
		})
		localeInfoTable[langInfo.localeCode] = {
			languageName = langInfo.languageName,
			languageCode = langCode,
		}
	end

	table.sort(languageInfoTable, function(a, b)
		return a.languageName < b.languageName
	end)

	return {
		languageInfoTable = languageInfoTable,
		localeInfoTable = localeInfoTable,
	}
end

local function createLocalizationToolsEnabled(toolbar, plugin, studioSettings)
	local ShowDialog = MakeShowDialog(plugin, studioSettings)
	local GameTableMain = MakeGameTableMain(plugin:GetStudioUserId())
	local Window = plugin:CreateDockWidgetPluginGui("Localization",
		DockWidgetPluginGuiInfo.new(Enum.InitialDockState.Left))
	Window.Title = "Localization Tools"
	Window.Name = "Localization"

	GameTableMain.GetAllSupportedLanguages():andThen(function(languageTable)
		local allLanguageInfo = processLanguageInfo(languageTable)
		local localizationToolsHandle = Roact.mount(Roact.createElement(LocalizationTools, {
			Window = Window,
			ShowDialog = ShowDialog,
			OpenCSV = GameTableMain.OpenCSV,
			SaveCSV = GameTableMain.SaveCSV,
			ComputeReplacePatch = GameTableMain.ComputeReplacePatch,
			ComputeUpdatePatch = GameTableMain.ComputeUpdatePatch,
			UploadPatch = GameTableMain.UploadPatch,
			DownloadGameTable = GameTableMain.DownloadGameTable,
			CheckTableAvailability = GameTableMain.CheckTableAvailability,
			GameIdChangedSignal = GameTableMain.GameIdChangedSignal,
			AllLanguagesInfo = allLanguageInfo,
			RequestAssetGeneration = GameTableMain.RequestAssetGeneration,
			StudioSettings = studioSettings,
			HandleUploadAnalytics = function(patchInfo, btnName)
				reportUploadPatch(plugin, patchInfo, btnName)
			end,
			HandleDownloadAnalytics = function(table, btnName)
				reportDownloadTable(plugin, table, btnName, GameTableMain.GetAllSupportedLanguages)
			end,
		}), Window)

		local button = createLocalizationToolsPluginButton(toolbar)

		Window.AncestryChanged:Connect(function(child, parent)
			if child == Window and parent == nil then
				Roact.unmount(localizationToolsHandle)
			end
		end)

		Window:GetPropertyChangedSignal("Enabled"):connect(function()
			button:SetActive(Window.Enabled)
		end)

		button.Enabled = true
		button.Click:Connect(function()
			Window.Enabled = not Window.Enabled
			button:SetActive(Window.Enabled)

			if Window.Enabled then
				reportToolOpened(plugin, 1)
				reportButtonPress(plugin, "tools", "open")
			else
				reportButtonPress(plugin, "tools", "closed")
			end
		end)
	end)
end


local function createLocalizationToolsDisabled(toolbar)
	createLocalizationToolsPluginButton(toolbar).Enabled = false
end


return function(plugin, studioSettings)
	if UseStudioLocaleForForceLocale then
		-- GetService needs to be put here to prevent errors in the unit test environment.
		local StudioService = game:GetService("StudioService")
		LocalizationService.RobloxForcePlayModeRobloxLocaleId = StudioService.StudioLocaleId
	end

	local toolbar = plugin:CreateToolbar("Localization")
	if IsEdit() then
		if not LocalizationToolsPluginV2Enabled then
			createTextScraperControlsEnabled_deprecated(toolbar, plugin)
		end
		createLocalizationToolsEnabled(toolbar, plugin, studioSettings)
	else
		if not LocalizationToolsPluginV2Enabled then
			createTextScraperControlsDisabled_deprecated(toolbar)
		end
		createLocalizationToolsDisabled(toolbar)
	end
end

