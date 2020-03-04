local LocalizationService = game:GetService("LocalizationService")
local AnalyticsService = game:GetService("RbxAnalyticsService")
local IsEdit = require(script.Parent.IsEdit)

local LocalizationTools = require(script.Parent.Components.LocalizationTools)
local MakeShowDialog = require(script.Parent.ShowDialog)
local MakeGameTableMain = require(script.Parent.GameTable.GameTableMain)
local RbxEntriesToWebEntries = require(script.Parent.GameTable.RbxEntriesToWebEntries)
local Roact = require(game:GetService("CorePackages").Roact)
local SourceStrings = require(script.Parent.SourceStrings)

local UseStudioLocaleForForceLocale = settings():GetFFlag("UseStudioLocaleForForceLocale")

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

local function createLocalizationToolsPluginButton(toolbar)
	return toolbar:CreateButton(
		SourceStrings.Main.RibbonBarButtonText,
		SourceStrings.Main.TooltipText,
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
	Window.Title = SourceStrings.Main.WindowTitleText
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

	local toolbar = plugin:CreateToolbar(SourceStrings.Main.ToolbarLabelText)
	if IsEdit() then
		createLocalizationToolsEnabled(toolbar, plugin, studioSettings)
	else
		createLocalizationToolsDisabled(toolbar)
	end
end

