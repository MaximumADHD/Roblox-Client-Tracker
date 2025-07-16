--!nonstrict
local root = script:FindFirstAncestor("AbuseReportMenu")
local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local LocalizationService = game:GetService("LocalizationService")
local RobloxGui = CoreGui.RobloxGui

local Players = game:GetService("Players")
local TnSIXPWrapper = require(root.IXP.TnSIXPWrapper)

local Foundation = require(CorePackages.Packages.Foundation)
local Roact = require(CorePackages.Packages.Roact)
local React = require(CorePackages.Packages.React)
local Style = require(CorePackages.Workspace.Packages.Style)
local Rhodium = require(CorePackages.Packages.Dev.Rhodium)
local Localization = require(CorePackages.Workspace.Packages.InExperienceLocales).Localization
local LocalizationProvider = require(CorePackages.Workspace.Packages.Localization).LocalizationProvider

local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local expect = JestGlobals.expect
local describe = JestGlobals.describe
local it = JestGlobals.it

local Constants = require(root.Components.Constants)
local reportAnythingAnalytics = require(root.ReportAnything.Utility.ReportAnythingAnalytics)
local ReportPersonMenuItemsContainer = require(root.Components.Containers.ReportPersonMenuItemsContainer)
local AbuseReportMenuNew = require(root.Components.AbuseReportMenuNew)
local LocalPlayer = Players.LocalPlayer :: Player
local StyleProviderWithDefaultTheme = Style.StyleProviderWithDefaultTheme

local utilityProps = {
	onReportComplete = function() end,
	isReportTabVisible = true,
	hideReportTab = function() end,
	reportAnythingAnalytics = reportAnythingAnalytics,
	reportAnythingState = Constants.ReportAnythingInitialState,
	reportAnythingDispatch = function() end,
	showReportSentPage = function() end,
	analyticsState = Constants.AnalyticsInitialState,
	analyticsDispatch = function() end,
	preselectedPlayer = LocalPlayer,
	setPreselectedPlayer = function() end,
	menuWidth = 600,
	viewportDimension = {
		width = 1366,
		height = 768,
	},
}

local defaultProps = {
	hideReportTab = function() end,
	showReportTab = function() end,
	showReportSentPage = function() end,
	registerOnReportTabHidden = function() end,
	registerOnReportTabDisplayed = function() end,
	registerOnSettingsHidden = function() end,
	registerSetNextPlayerToReport = function() end,
	registerOnMenuWidthChange = function() end,
	onReportComplete = function() end,
}

-- Create ReportPersonMenuItemsContainer component
local element = React.createElement(Foundation.FoundationProvider, {
	theme = Foundation.Enums.Theme.Dark,
}, {
	LocalizationProvider = React.createElement(LocalizationProvider, {
		localization = Localization.new(LocalizationService.RobloxLocaleId),
	}, {
		StyleProvider = React.createElement(StyleProviderWithDefaultTheme, {
			withDarkTheme = true,
		}, {
			menuItems = React.createElement(ReportPersonMenuItemsContainer, {
				utilityProps = utilityProps,
				isSmallPortraitViewport = false,
			}),
		}),
	}),
})

-- Create ReportPersonMenuItemsContainer component
local element2 = React.createElement(AbuseReportMenuNew, defaultProps)

describe("ReportPersonMenuItemsContainer", function()
	it("should create ReportPersonMenuItemsContainer with no errors", function()
		local instance = Roact.mount(element, CoreGui, "ReportPersonMenuItemsContainer")

		expect(instance).never.toBeNil()

		Roact.unmount(instance)
	end)

	it("should have PlayerSelector menu item as not nil", function()
		local instance = Roact.mount(element, CoreGui, "ReportPersonMenuItemsContainer")

		local PlayerSelector = CoreGui:FindFirstChild("PlayerSelector", true)
		expect(PlayerSelector).never.toBeNil()

		Roact.unmount(instance)
	end)

	it("should have ModalSelectorDialogGui as not nil when clicking PlayerSelector dropdown menu item", function()
		-- We need to mount the AbuseReportMenuNew or else the ModalSelectorDialogGui will not have a parent component to mount to
		local AbuseReportMenuInstance = Roact.mount(element2, CoreGui, Constants.AbuseReportMenuRootName)
		local ReportPersonMenuItemsContainerInstance = Roact.mount(element, RobloxGui, "ReportPersonMenuItemsContainer")

		local PlayerSelector = CoreGui:FindFirstChild("PlayerSelector", true)
		local PlayerSelectorButtonElement =
			Rhodium.Element.new(PlayerSelector.RightComponentWrapper.RightComponent.ControlButton)

		Roact.act(function()
			PlayerSelectorButtonElement:click()
		end)

		local ModalSelectorDialogGui = CoreGui:FindFirstChild("ModalSelectorDialogGui", true)
		expect(ModalSelectorDialogGui).never.toBeNil()

		Roact.act(function()
			ModalSelectorDialogGui:destroy()
		end)

		Roact.unmount(AbuseReportMenuInstance)
		Roact.unmount(ReportPersonMenuItemsContainerInstance)
	end)

	it("should have AbuseReason menu item as not nil", function()
		local instance = Roact.mount(element, CoreGui, "ReportPersonMenuItemsContainer")

		local AbuseReason = CoreGui:FindFirstChild("AbuseReason", true)
		expect(AbuseReason).never.toBeNil()

		Roact.unmount(instance)
	end)

	it("should have FreeComments menu item as not nil", function()
		local instance = Roact.mount(element, CoreGui, "ReportPersonMenuItemsContainer")

		local FreeComments = CoreGui:FindFirstChild("FreeComments", true)
		expect(FreeComments).never.toBeNil()

		Roact.unmount(instance)
	end)

	it("should have MethodOfAbuse menu item as not nil", function()
		-- set report anything flag to true
		local ForceReportAnythingAnnotationEnabled = TnSIXPWrapper.getReportAnythingAvatarEnabled()
		game:SetFastFlagForTesting("ForceReportAnythingAnnotationEnabled", true)

		local instance = Roact.mount(element, CoreGui, "ReportPersonMenuItemsContainer")

		local MethodOfAbuse = CoreGui:FindFirstChild("MethodOfAbuse", true)
		expect(MethodOfAbuse).never.toBeNil()

		Roact.unmount(instance)
		game:SetFastFlagForTesting("ForceReportAnythingAnnotationEnabled", ForceReportAnythingAnnotationEnabled)
	end)

	it("should have SubmitButton menu item as not nil", function()
		local instance = Roact.mount(element, CoreGui, "ReportPersonMenuItemsContainer")

		local SubmitButton = CoreGui:FindFirstChild("SubmitButton", true)
		expect(SubmitButton).never.toBeNil()

		Roact.unmount(instance)
	end)
end)
