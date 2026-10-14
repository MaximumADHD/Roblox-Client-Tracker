--!nonstrict
local CorePackages = game:GetService("CorePackages")
local Modules = game:GetService("CoreGui").RobloxGui.Modules
local blockingModalStory = require(Modules.Settings.Components.Blocking:FindFirstChild("BlockingModalContainer.story"))

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

local successfulAction = function()
	return true
end

local c

describe("BlockingModalContainer", function()
	beforeEach(function()
		c = {}
		c.blockPlayerAsyncMock, c.blockPlayerAsync = jest.fn(successfulAction)
		c.blockingUtility = {
			BlockPlayerAsync = c.blockPlayerAsync,
		}
		c.closeModalSpy, c.closeModal = jest.fn(successfulAction)
		c.player = {
			UserId = 10,
			Name = "name",
			DisplayName = "displayname",
		}

		c.analyticsActionMock, c.analyticsAction = jest.fn()
		c.analytics = {
			action = c.analyticsAction,
		}

		c.parent, c.cleanup = createInstanceWithProps(blockingModalStory, {
			analytics = c.analytics,
			blockingUtility = c.blockingUtility,
			robloxTranslator = c.robloxTranslatorMock,
			closeModal = c.closeModal,
			player = c.player,
			blockTextKey = "Block",
			cancelTextKey = "Cancel",
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

	it("SHOULD close modal and block user if they click block", function()
		local button = RhodiumHelpers.findFirstInstance(c.parent, {
			Text = "Block",
		})

		jestExpect(button).never.toBeNil()

		RhodiumHelpers.clickInstance(button)

		jestExpect(c.closeModalSpy).toHaveBeenCalledTimes(1)
		jestExpect(c.blockPlayerAsyncMock).toHaveBeenCalledTimes(1)
		jestExpect(c.blockPlayerAsyncMock).toHaveBeenCalledWith(c.blockingUtility, c.player)
	end)
	it("SHOULD close modal, block user and call report if they click block and report", function()
		local button = RhodiumHelpers.findFirstInstance(c.parent, {
			Text = "Block and report",
		})

		jestExpect(button).never.toBeNil()

		RhodiumHelpers.clickInstance(button)

		jestExpect(c.closeModalSpy).toHaveBeenCalledTimes(1)
		jestExpect(c.blockPlayerAsyncMock).toHaveBeenCalledTimes(1)
		jestExpect(c.blockPlayerAsyncMock).toHaveBeenCalledWith(c.blockingUtility, c.player)
		-- TODO: add check for reporting when isNewInGameMenuEnabled is cleaned up
	end)

	it("SHOULD fire analytics action if they click block and its successful", function()
		local button = RhodiumHelpers.findFirstInstance(c.parent, {
			Text = "Block and report",
		})

		jestExpect(button).never.toBeNil()

		RhodiumHelpers.clickInstance(button)

		jestExpect(c.analyticsActionMock).toHaveBeenCalledTimes(1)
		jestExpect(c.analyticsActionMock).toHaveBeenCalledWith(
			c.analytics,
			"SettingsHub",
			"blockUser",
			{ blockeeUserId = c.player.UserId, source = "source" }
		)
	end)

	it("SHOULD fire analytics action if they click block and report and its successful", function()
		local button = RhodiumHelpers.findFirstInstance(c.parent, {
			Text = "Block",
		})

		jestExpect(button).never.toBeNil()

		RhodiumHelpers.clickInstance(button)

		jestExpect(c.closeModalSpy).toHaveBeenCalledTimes(1)
		jestExpect(c.analyticsActionMock).toHaveBeenCalledTimes(1)
		jestExpect(c.analyticsActionMock).toHaveBeenCalledWith(
			c.analytics,
			"SettingsHub",
			"blockUser",
			{ blockeeUserId = c.player.UserId, source = "source" }
		)
	end)

	it("SHOULD only close the modal if they click cancel", function()
		local blockButton = RhodiumHelpers.findFirstInstance(c.parent, {
			Text = "Cancel",
		})

		jestExpect(blockButton).never.toBeNil()

		RhodiumHelpers.clickInstance(blockButton.Parent)

		jestExpect(c.closeModalSpy).toHaveBeenCalledTimes(1)
		jestExpect(c.blockPlayerAsyncMock).never.toHaveBeenCalled()
	end)
end)
