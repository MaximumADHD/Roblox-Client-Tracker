--!nonstrict
local CorePackages = game:GetService("CorePackages")
local Modules = game:GetService("CoreGui").RobloxGui.Modules
local actionModalDefaultStory = require(Modules.Settings.Components.Blocking:FindFirstChild("ActionModal.story"))

local waitForEvents = require(CorePackages.Workspace.Packages.TestUtils).DeferredLuaHelpers.waitForEvents

local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local describe = JestGlobals.describe
local it = JestGlobals.it
local beforeEach = JestGlobals.beforeEach
local afterEach = JestGlobals.afterEach
local jest = JestGlobals.jest
local jestExpect = JestGlobals.expect

local RhodiumHelpers = require(CorePackages.Workspace.Packages.RhodiumHelpers)
local createInstanceWithProps = require(Modules.CoreScriptsRhodiumTest.TestHelpers.createInstanceWithProps)

local noOpt = function() end

local c

describe("ActionModal", function()
	beforeEach(function()
		c = {}
		c.actionMockSpy, c.actionMock = jest.fn(noOpt)
		c.cancelMockSpy, c.cancelMock = jest.fn(noOpt)
		c.blockMockSpy, c.blockMock = jest.fn(noOpt)
		c.blockAndReportMockSpy, c.blockAndReportMock = jest.fn(noOpt)

		c.parent, c.cleanup = createInstanceWithProps(actionModalDefaultStory, {
			cancel = c.cancelMock,
			block = c.blockMock,
			blockAndReport = c.blockAndReportMock,
		})

		-- The `Alert` dialog in uiblox has multiphase measure/layout
		-- behavior, meaning that we need to defer events _twice_ and make
		-- sure to `act` on the second one to resolve render updates queued
		-- by those event handlers
		waitForEvents()
		waitForEvents.act()
	end)

	afterEach(function()
		c.cleanup()
	end)

	it("SHOULD only call block if they click block", function()
		local button = RhodiumHelpers.findFirstInstance(c.parent, {
			Text = "Block",
		})

		jestExpect(button).never.toBeNil()

		RhodiumHelpers.clickInstance(button)
		jestExpect(c.blockMockSpy).toHaveBeenCalledTimes(1)
		jestExpect(c.cancelMockSpy).never.toHaveBeenCalled()
		jestExpect(c.blockAndReportMockSpy).never.toHaveBeenCalled()
	end)

	it("SHOULD only close the modal if they click cancel", function()
		local blockButton = RhodiumHelpers.findFirstInstance(c.parent, {
			Text = "Cancel",
		})

		jestExpect(blockButton).never.toBeNil()

		RhodiumHelpers.clickInstance(blockButton.Parent)

		jestExpect(c.actionMockSpy).never.toHaveBeenCalled()
		jestExpect(c.blockMockSpy).never.toHaveBeenCalled()
		jestExpect(c.blockAndReportMockSpy).never.toHaveBeenCalled()
		jestExpect(c.cancelMockSpy).toHaveBeenCalledTimes(1)
	end)
	it("SHOULD only call block and report if they click BlockAndReport", function()
		local button = RhodiumHelpers.findFirstInstance(c.parent, {
			Text = "BlockAndReport",
		})

		jestExpect(button).never.toBeNil()

		RhodiumHelpers.clickInstance(button)
		jestExpect(c.blockAndReportMockSpy).toHaveBeenCalledTimes(1)
		jestExpect(c.blockMockSpy).never.toHaveBeenCalled()
		jestExpect(c.cancelMockSpy).never.toHaveBeenCalled()
	end)
end)
