local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local Modules = RobloxGui.Modules 

local BuilderIcons = require(CorePackages.Packages.BuilderIcons)
local Foundation = require(CorePackages.Packages.Foundation)
local React = require(CorePackages.Packages.React)
local ReactRoblox = require(CorePackages.Packages.ReactRoblox)

local SettingsFlags = require(Modules.Settings.Flags)
local SettingsPageFactory = require(Modules.Settings.SettingsPageFactory)

local FFlagRefactorInExpSettingsInDevelopment = SettingsFlags.FFlagRefactorInExpSettingsInDevelopment

local Integrations = nil
local Utils = nil
local Constants = nil
if FFlagRefactorInExpSettingsInDevelopment then
	Integrations = require(Modules.Settings.Integrations)
	Utils = Integrations.Utils
	Constants = Integrations.Constants
end
local FoundationProvider = Foundation.FoundationProvider
local migrationLookup = BuilderIcons.Migration

local function createGameSettings()
	local GameSettings = SettingsPageFactory:CreateNewPage()
	------ TAB CUSTOMIZATION -------
	GameSettings.TabHeader.Name = Constants.GAMESETTINGS.TAB_HEADER.NAME
	local icon = migrationLookup['uiblox']["icons/common/settings"]
	GameSettings.TabHeader.TabLabel.Icon.Text = icon.name
	GameSettings.TabHeader.TabLabel.Icon.FontFace = BuilderIcons.Font[icon.variant]
	GameSettings.TabHeader.TabLabel.Title.Text = Constants.GAMESETTINGS.TAB_HEADER.TEXT

	------ PAGE CUSTOMIZATION -------
	-- start with fresh page
	GameSettings.Page:ClearAllChildren()

	GameSettings.PageOpen = false
	GameSettings.OpenSettingsPage = function()
		GameSettings.PageOpen = true
	end
	GameSettings.CloseSettingsPage = function()
		GameSettings.PageOpen = false
	end

	local Settings = React.createElement(FoundationProvider, {
		theme = Foundation.Enums.Theme.Dark,
		device = Utils.getDeviceType(),
	}, {
		-- In-Dev: add settings page
	})

	local tree = ReactRoblox.createRoot(GameSettings.Page)
	tree:render(Settings)

	return GameSettings
end

if FFlagRefactorInExpSettingsInDevelopment then
	return createGameSettings()
end
return require(Modules.Settings.Pages.GameSettings)
