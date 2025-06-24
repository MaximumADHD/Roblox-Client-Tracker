--[[
Wraps old People.lua page and its new refactored version that uses the 
Settings Framework.
Flag flip will determine whether the old or new page is attached.
]]

local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local LocalizationService = game:GetService("LocalizationService")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local Modules = RobloxGui.Modules 

-- Flags
local FFlagRefactorPeoplePage = require(Modules.Settings.Flags.FFlagRefactorPeoplePage)
local FFlagBuilderIcons = require(CorePackages.Workspace.Packages.SharedFlags).UIBlox.FFlagUIBloxMigrateBuilderIcon

-- Modules
local Constants = require(CorePackages.Workspace.Packages.PeopleReactView).Constants
local Foundation = require(CorePackages.Packages.Foundation)
local FoundationProvider = Foundation.FoundationProvider
local Localization = require(CorePackages.Workspace.Packages.InExperienceLocales).Localization
local PeopleReactView = require(CorePackages.Workspace.Packages.PeopleReactView).PeopleReactView
local React = require(CorePackages.Packages.React)
local ReactRoblox = require(CorePackages.Packages.ReactRoblox)
local SettingsPageFactory = require(Modules.Settings.SettingsPageFactory)
local Theme = require(RobloxGui.Modules.Settings.Theme)
local locales = Localization.new(LocalizationService.RobloxLocaleId)
local BuilderIcons = require(CorePackages.Packages.BuilderIcons)
local migrationLookup = BuilderIcons.Migration['uiblox']

-- Returns GameSettings Page with Settings Framework
local function createPeoplePage()
	local PeoplePage = SettingsPageFactory:CreateNewPage()
	
	------ TAB CUSTOMIZATION -------
	PeoplePage.TabHeader.Name = Constants.PEOPLEPAGE.TAB_HEADER.NAME
	local icon
	if FFlagBuilderIcons then
		icon = migrationLookup[Constants.PEOPLEPAGE.TAB_HEADER.ICON]
		PeoplePage.TabHeader.TabLabel.Icon.Text = icon.name
		PeoplePage.TabHeader.TabLabel.Icon.FontFace = BuilderIcons.Font[icon.variant]
	else
		icon = Theme.Images[Constants.PEOPLEPAGE.TAB_HEADER.ICON]
		PeoplePage.TabHeader.TabLabel.Icon.ImageRectOffset = icon.ImageRectOffset
		PeoplePage.TabHeader.TabLabel.Icon.ImageRectSize = icon.ImageRectSize
		PeoplePage.TabHeader.TabLabel.Icon.Image = icon.Image
	end
	PeoplePage.TabHeader.TabLabel.Title.Text = locales:Format(Constants.PEOPLEPAGE.TAB_HEADER.TEXT)

	------ PAGE CUSTOMIZATION -------
	local People = React.createElement(FoundationProvider, {
		theme = Foundation.Enums.Theme.Dark,
	}, {
		Child = React.createElement(PeopleReactView)
	})

	local tree = ReactRoblox.createRoot(PeoplePage.Page)
	tree:render(People)

	return PeoplePage
end

-- FFlag switch for the new people page
if FFlagRefactorPeoplePage() then
	return createPeoplePage()
end
return require(Modules.Settings.Pages.Players)
