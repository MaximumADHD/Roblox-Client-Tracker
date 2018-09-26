local runService = game:GetService("RunService")
local LocalizationService = game:GetService("LocalizationService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local CorePackages = game:GetService("CorePackages")

local enabled = runService:IsEdit()

local function createTextScraperControls(toolbar, plugin)
	function getTextScraperAsset()
		return LocalizationService.IsTextScraperRunning
			and "rbxasset://textures/localizationUIScrapingOn.png"
			or "rbxasset://textures/localizationUIScrapingOff.png"
	end

	local captureButton = toolbar:CreateButton(
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

	captureButton.Enabled = enabled
	captureButton.Click:Connect(function()
		if not LocalizationService.IsTextScraperRunning then
			LocalizationService:StartTextScraper()
		else
			LocalizationService:StopTextScraper()
		end
		captureButton.Icon = getTextScraperAsset()
	end)

	exportButton.Enabled = enabled
	exportButton.Click:Connect(function()
		LocalizationService:PromptExportToCSVs()
	end)

	importButton.Enabled = enabled
	importButton.Click:Connect(function()
		LocalizationService:PromptImportFromCSVs()
	end)
end

local function getInitialRobloxLocaleId()
	local forcedLocale = LocalizationService.RobloxForcePlayModeRobloxLocaleId

	if forcedLocale ~= "" then
		return forcedLocale
	end

	return LocalizationService.RobloxLocaleId
end

local function createPlayerLocaleViewButton(toolbar, plugin)
	local PlayerLocaleView = require(script.Parent.Components.PlayerLocaleView)
	local Roact = require(CorePackages.Roact)

	local Window = plugin:CreateDockWidgetPluginGui("LocalizationTesting",
		DockWidgetPluginGuiInfo.new(Enum.InitialDockState.Left))
	Window.Title = "Test Language"

	local params = {
		Window = Window,
		SetRobloxLocaleId = function(localeId)
			LocalizationService.RobloxForcePlayModeRobloxLocaleId = localeId
		end,
		InitialRobloxLocaleId = getInitialRobloxLocaleId(),
	}

	Roact.mount(Roact.createElement(PlayerLocaleView, params), Window)
	Window.Enabled = false

	local button = toolbar:CreateButton(
		"Test Language",
		"Hide/show the Localization Testing view",
		"rbxasset://textures/localizationTestingIcon.png")

	button.Enabled = enabled
	button.Click:Connect(
		function()
			Window.Enabled = not Window.Enabled
		end
	)
end

return function(plugin)
	local toolbar = plugin:CreateToolbar("Localization Tools")
	createTextScraperControls(toolbar, plugin)
	createPlayerLocaleViewButton(toolbar, plugin)
end
