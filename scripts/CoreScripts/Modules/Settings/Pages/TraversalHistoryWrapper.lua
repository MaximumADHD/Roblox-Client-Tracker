-- Wrapper page for traversal history in the in-game menu side sheet integration.

local CorePackages = game:GetService("CorePackages")
local LocalizationService = game:GetService("LocalizationService")
local Settings = script:FindFirstAncestor("Settings")

local React = require(CorePackages.Packages.React)
local ReactRoblox = require(CorePackages.Packages.ReactRoblox)

local Foundation = require(CorePackages.Packages.Foundation)
local FoundationProvider = Foundation.FoundationProvider

local Localization = require(CorePackages.Workspace.Packages.InExperienceLocales).Localization
local LocalizationProvider = require(CorePackages.Workspace.Packages.Localization).LocalizationProvider
local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)

local Constants = require(Settings.Integrations.Constants)
local TraversalHistoryPage = require(Settings.Components.Traversal.TraversalHistoryPage)
local SettingsPageFactory = require(Settings.SettingsPageFactory)
local Utils = require(Settings.Integrations.Utils)

local FFlagEnableSideSheet = SharedFlags.FFlagEnableSideSheet

local function createTraversalHistoryWrapper()
	local locales = Localization.new(LocalizationService.RobloxLocaleId)
	
	local this = SettingsPageFactory:CreateNewPage()

	this.Page:ClearAllChildren()
	this.Page.Name = "TraversalHistoryPage"
	this.TabHeader.Name = Constants.TRAVERSAL_HISTORY.TAB_HEADER.NAME
	this.TabHeader.TabLabel.Title.AutoLocalize = false
	this.TabHeader.TabLabel.Title.Text = locales:Format(Constants.TRAVERSAL_HISTORY.TAB_HEADER.TEXT_KEY)

	this.PageListLayout.Parent = nil
	this.ShouldShowBottomBar = not FFlagEnableSideSheet
	this.ShouldShowHubBar = true

	this.Page.Size = UDim2.fromScale(1, 0)
	
	local tree = ReactRoblox.createRoot(this.Page)
	tree:render(
		React.createElement(FoundationProvider, {
			colorMode = Foundation.Enums.ColorMode.Dark,
			device = Utils.getDeviceType(),
		}, {
			Localization = React.createElement(LocalizationProvider, {
				localization = locales,
			}, {
				Page = React.createElement(TraversalHistoryPage),
			})
		})
	)

	return this
end

return createTraversalHistoryWrapper
