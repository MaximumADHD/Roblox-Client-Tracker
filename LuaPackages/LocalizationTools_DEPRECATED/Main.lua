local LocalizationService = game:GetService("LocalizationService")
local AnalyticsService = game:GetService("AnalyticsService")
local IsEdit = require(script.Parent.IsEdit)

local LocalizationTools = require(script.Parent.Components.LocalizationTools)
local MakeShowDialog = require(script.Parent.ShowDialog)
local MakeGameTableMain = require(script.Parent.GameTable.GameTableMain)
local Roact = require(game:GetService("CorePackages").Roact)


local function getTextScraperButtonIconAsset()
	return LocalizationService.IsTextScraperRunning
		and "rbxasset://textures/localizationUIScrapingOn.png"
		or "rbxasset://textures/localizationUIScrapingOff.png"
end


local function createTextScraperPluginButtons(toolbar)
	local captureButton = toolbar:CreateButton(
		"Text Capture",
		"Enable untranslated text capture",
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


local function createTextScraperControlsEnabled(toolbar)
	local buttons = createTextScraperPluginButtons(toolbar)

	buttons.captureButton.Enabled = true
	buttons.captureButton.Click:Connect(function()
		if not LocalizationService.IsTextScraperRunning then
			LocalizationService:StartTextScraper()
		else
			LocalizationService:StopTextScraper()
		end
		buttons.captureButton.Icon = getTextScraperButtonIconAsset()
	end)

	buttons.exportButton.Enabled = true
	buttons.exportButton.Click:Connect(function()
		LocalizationService:PromptExportToCSVs()
	end)

	buttons.importButton.Enabled = true
	buttons.importButton.Click:Connect(function()
		LocalizationService:PromptImportFromCSVs()
	end)
end


local function createTextScraperControlsDisabled(toolbar)
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

local function createLocalizationToolsEnabled(toolbar, plugin, studioSettings)
	local ShowDialog = MakeShowDialog(plugin, studioSettings)
	local GameTableMain = MakeGameTableMain(plugin:GetStudioUserId())
	local Window = plugin:CreateDockWidgetPluginGui("Localization",
		DockWidgetPluginGuiInfo.new(Enum.InitialDockState.Left))
	Window.Title = "Localization Tools"
	Window.Name = "Localization"

	local localizationToolsHandle = Roact.mount(Roact.createElement(LocalizationTools, {
		Window = Window,
		ShowDialog = ShowDialog,
		OpenCSV = GameTableMain.OpenCSV,
		SaveCSV = GameTableMain.SaveCSV,
		ComputePatch = GameTableMain.ComputePatch,
		UploadPatch = GameTableMain.UploadPatch,
		DownloadGameTable = GameTableMain.DownloadGameTable,
		UpdateGameTableInfo = GameTableMain.UpdateGameTableInfo,
		CheckTableAvailability = GameTableMain.CheckTableAvailability,
		GameIdChangedSignal = GameTableMain.GameIdChangedSignal,
		StudioSettings = studioSettings,
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
	button.Click:Connect(
		function()
			Window.Enabled = not Window.Enabled
			button:SetActive(Window.Enabled)

			if (Window.Enabled) then
				reportToolOpened(plugin, 1)
			end
		end)
end


local function createLocalizationToolsDisabled(toolbar, plugin)
	createLocalizationToolsPluginButton(toolbar).Enabled = false
end


return function(plugin, studioSettings)
	local toolbar = plugin:CreateToolbar("Localization")
	if IsEdit() then
		createTextScraperControlsEnabled(toolbar)
		createLocalizationToolsEnabled(toolbar, plugin, studioSettings)
	else
		createTextScraperControlsDisabled(toolbar)
		createLocalizationToolsDisabled(toolbar)
	end
end

