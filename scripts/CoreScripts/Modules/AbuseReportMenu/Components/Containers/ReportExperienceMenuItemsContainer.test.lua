local root = script:FindFirstAncestor("AbuseReportMenu")
local CoreGui = game:GetService("CoreGui")

local Players = game:GetService("Players")
local LocalizationService = game:GetService("LocalizationService")

local TnSIXPWrapper = require(root.IXP.TnSIXPWrapper)
local CorePackages = game:GetService("CorePackages")

local Foundation = require(CorePackages.Packages.Foundation)
local Roact = require(CorePackages.Packages.Roact)
local React = require(CorePackages.Packages.React)
local Style = require(CorePackages.Workspace.Packages.Style)
local Localization = require(CorePackages.Workspace.Packages.InExperienceLocales).Localization
local LocalizationProvider = require(CorePackages.Workspace.Packages.Localization).LocalizationProvider

local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local expect = JestGlobals.expect
local describe = JestGlobals.describe
local it = JestGlobals.it

local Constants = require(root.Components.Constants)
local reportAnythingAnalytics = require(root.ReportAnything.Utility.ReportAnythingAnalytics)
local ReportExperienceMenuItemsContainer = require(root.Components.Containers.ReportExperienceMenuItemsContainer)
local LocalPlayer = Players.LocalPlayer :: Player
local StyleProviderWithDefaultTheme = Style.StyleProviderWithDefaultTheme

local utilityProps = {
	onReportComplete = function() end,
	onDropdownMenuOpenChange = function() end,
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

-- Create ReportExperienceMenuItemsContainer component
local element = React.createElement(Foundation.FoundationProvider, {
	theme = Foundation.Enums.Theme.Dark,
}, {
	LocalizationProvider = React.createElement(LocalizationProvider, {
		localization = Localization.new(LocalizationService.RobloxLocaleId),
	}, {
		StyleProvider = React.createElement(StyleProviderWithDefaultTheme, {
			withDarkTheme = true,
		}, {
			menuItems = React.createElement(ReportExperienceMenuItemsContainer, {
				utilityProps = utilityProps,
				isSmallPortraitViewport = false,
			}),
		}),
	}),
})

describe("ReportExperienceMenuItemsContainer", function()
	it("should create ReportExperienceMenuItemsContainer with no errors", function()
		local instance = Roact.mount(element, CoreGui, "ReportExperienceMenuItemsContainer")

		expect(instance).never.toBeNil()

		Roact.unmount(instance)
	end)

	it("should have AbuseReason menu item as not nil", function()
		local instance = Roact.mount(element, CoreGui, "ReportExperienceMenuItemsContainer")

		local AbuseReason = CoreGui:FindFirstChild("AbuseReason", true)
		expect(AbuseReason).never.toBeNil()

		Roact.unmount(instance)
	end)

	it("should have FreeComments menu item as not nil", function()
		local instance = Roact.mount(element, CoreGui, "ReportExperienceMenuItemsContainer")

		local FreeComments = CoreGui:FindFirstChild("FreeComments", true)
		expect(FreeComments).never.toBeNil()

		Roact.unmount(instance)
	end)

	it("should have OptionalScreenshot menu item as not nil", function()
		-- set report anything flag to true
		local ForceReportAnythingAnnotationEnabled = TnSIXPWrapper.getReportAnythingExperienceEnabled()
		game:SetFastFlagForTesting("ForceReportAnythingAnnotationEnabled", true)

		local instance = Roact.mount(element, CoreGui, "ReportExperienceMenuItemsContainer")

		local OptionalScreenshot = CoreGui:FindFirstChild("OptionalScreenshot", true)
		expect(OptionalScreenshot).never.toBeNil()

		Roact.unmount(instance)
		game:SetFastFlagForTesting("ForceReportAnythingAnnotationEnabled", ForceReportAnythingAnnotationEnabled)
	end)

	it("should have SubmitButton menu item as not nil", function()
		local instance = Roact.mount(element, CoreGui, "ReportExperienceMenuItemsContainer")

		local SubmitButton = CoreGui:FindFirstChild("SubmitButton", true)
		expect(SubmitButton).never.toBeNil()

		Roact.unmount(instance)
	end)
end)
