local root = script:FindFirstAncestor("AbuseReportMenu")
local CoreGui = game:GetService("CoreGui")

local CorePackages = game:GetService("CorePackages")

local Roact = require(CorePackages.Packages.Roact)
local React = require(CorePackages.Packages.React)

local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local expect = JestGlobals.expect
local describe = JestGlobals.describe
local it = JestGlobals.it

local AbuseReportMenuNew = require(root.Components.AbuseReportMenuNew)

local displayReportTab = function() end

local defaultProps = {
	hideReportTab = function() end,
	showReportTab = function() end,
	showReportSentPage = function() end,
	registerOnReportTabHidden = function() end,
	registerOnReportTabDisplayed = function(callWhenDisplayed)
		displayReportTab = callWhenDisplayed
	end,
	registerOnSettingsHidden = function() end,
	registerSetNextPlayerToReport = function() end,
	registerOnMenuWidthChange = function() end,
	onReportComplete = function() end,
}

describe("AbuseReportMenuNew", function()
	it("should create and destroy AbuseReportMenuNew without errors", function()
		local element = React.createElement(AbuseReportMenuNew, defaultProps)
		local instance = Roact.mount(element, CoreGui, "AbuseReportMenuNew")

		expect(instance).never.toBeNil()

		Roact.unmount(instance)
	end)

	it("should create ReportTypeSelector with no errors", function()
		local element = React.createElement(AbuseReportMenuNew, defaultProps)
		local instance = Roact.mount(element, CoreGui, "AbuseReportMenuNew")

		Roact.act(function()
			displayReportTab()
		end)

		local MenuRoot = CoreGui:FindFirstChild("AbuseReportMenuNewRoot", true)
		expect(MenuRoot).never.toBeNil()

		--[[
		Look under MenuRoot since if looking under CoreGui, it'll find the module rather than the actual component
		Compare:
		Component path: CoreGui.AbuseReportMenuNewRoot.FocusNavigationCoreScriptsWrapper.AbuseReportMenuPlaceholderFrame.MenuLayoutFrame.Menu.ReportTypeSelector
		Module path: CoreGui.RobloxGui.Modules.AbuseReportMenu.Components.ReportTypeSelector
		]]

		local ReportTypeSelector = (MenuRoot :: any):FindFirstChild("ReportTypeSelector", true)
		expect(ReportTypeSelector).never.toBeNil()

		Roact.unmount(instance)
	end)
end)
