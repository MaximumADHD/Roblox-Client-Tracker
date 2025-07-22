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
local Foundation = require(CorePackages.Packages.Foundation)
local FoundationProvider = Foundation.FoundationProvider
local Localization = require(CorePackages.Workspace.Packages.InExperienceLocales).Localization
local LocalizationProvider = require(CorePackages.Workspace.Packages.Localization).LocalizationProvider
local React = require(CorePackages.Packages.React)
local ReactRoblox = require(CorePackages.Packages.ReactRoblox)
local SettingsPageFactory = require(Modules.Settings.SettingsPageFactory)
local Theme = require(RobloxGui.Modules.Settings.Theme)
local locales = Localization.new(LocalizationService.RobloxLocaleId)
local BuilderIcons = require(CorePackages.Packages.BuilderIcons)
local migrationLookup = BuilderIcons.Migration['uiblox']

-- Focus Navigation
local FocusNavigationUtils = require(CorePackages.Workspace.Packages.FocusNavigationUtils)
local FocusRoot = FocusNavigationUtils.FocusRoot
local FocusNavigableSurfaceIdentifierEnum = FocusNavigationUtils.FocusNavigableSurfaceIdentifierEnum
local ReactFocusNavigation = require(CorePackages.Packages.ReactFocusNavigation)
local focusNavigationService = ReactFocusNavigation.FocusNavigationService.new(ReactFocusNavigation.EngineInterface.CoreGui)
local FocusNavigableSurfaceRegistry = FocusNavigationUtils.FocusNavigableSurfaceRegistry
local FocusNavigationRegistryProvider = FocusNavigableSurfaceRegistry.Provider

local Integrations
local Constants
local Utils
if FFlagRefactorPeoplePage() then
	Constants = require(CorePackages.Workspace.Packages.PeopleReactView).Constants
	Integrations = require(Modules.Settings.Integrations)
	Utils = Integrations.Utils
end

-- Returns GameSettings Page with Settings Framework
local function createPeoplePage()
	local PeopleReactView = require(CorePackages.Workspace.Packages.PeopleReactView).PeopleReactView
	local PeopleService = require(CorePackages.Workspace.Packages.PeopleService)
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

	-- Register the SettingsHub instance with the PeopleService
	local SettingsHubService = PeopleService.getService("SettingsHubService")
	SettingsHubService.register(PeoplePage)

	function PeoplePage:CreateMenuButtonsContainer()
		SettingsHubService.setShowMenuButtonsContainer(true)
	end

	------ PAGE CUSTOMIZATION -------	
	local People = React.createElement(ReactFocusNavigation.FocusNavigationContext.Provider, {
		value = focusNavigationService,
	}, {
		FocusNavigationRegistryProvider = React.createElement(FocusNavigationRegistryProvider, nil, {
			LocalizationProvider = React.createElement(LocalizationProvider, {
				localization = locales,
			}, {
				FoundationProvider = React.createElement(FoundationProvider, {
					theme = Foundation.Enums.Theme.Dark,
					device = Utils.getDeviceType(),
				}, {
					FocusRoot = React.createElement(FocusRoot, {
						surfaceIdentifier = FocusNavigableSurfaceIdentifierEnum.RouterView,
						isAutoFocusRoot = true,
					}, {
						PeopleReactView = React.createElement(PeopleReactView)
					})
				})
			})
		})
	})

	local tree = ReactRoblox.createRoot(PeoplePage.Page)
	tree:render(People)

	PeoplePage.Page.Size = UDim2.new(1, 0, 0, 0)
	PeoplePage.Page.AutomaticSize = Enum.AutomaticSize.Y

	return PeoplePage
end

-- FFlag switch for the new people page
if FFlagRefactorPeoplePage() then
	return createPeoplePage()
end
return require(Modules.Settings.Pages.Players)
