--!nonstrict
local CorePackages = game:GetService("CorePackages")
local Modules = game:GetService("CoreGui").RobloxGui.Modules
local ReportActionSelection = require(Modules.Settings.Components.ReportConfirmation.ReportActionSelection)

local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local describe = JestGlobals.describe
local it = JestGlobals.it
local beforeEach = JestGlobals.beforeEach
local afterEach = JestGlobals.afterEach
local jest = JestGlobals.jest
local jestExpect = JestGlobals.expect

local RhodiumHelpers = require(CorePackages.Workspace.Packages.RhodiumHelpers)
local createInstanceWithProps = require(Modules.CoreScriptsRhodiumTest.TestHelpers.createInstanceWithProps)
local act = require(CorePackages.Packages.Roact).act

local noOp = function() end

local c

describe("ReportActionSelection", function()
	beforeEach(function()
		c = {}
		c.onMuteCheckboxActivatedMockSpy, c.onMuteCheckboxActivatedMock = jest.fn(noOp)
		c.onBlockCheckboxActivatedMockSpy, c.onBlockCheckboxActivatedMock = jest.fn(noOp)
		c.onDoneActivatedMockSpy, c.onDoneActivatedMock = jest.fn(noOp)

		c.parent, c.cleanup = createInstanceWithProps(ReportActionSelection, {
			onMuteCheckboxActivated = c.onMuteCheckboxActivatedMock,
			onBlockCheckboxActivated = c.onBlockCheckboxActivatedMock,
			onDoneActivated = c.onDoneActivatedMock,
			muteText = "Mute",
			blockText = "Block",
			doneText = "Done",
			showVoiceMuting = true,
			isVoiceMuted = false,
			isBlocked = false,
		})
	end)

	afterEach(function()
		c.cleanup()
	end)

	it("SHOULD only call onDoneActivated with muted argument", function()
		local muteCheckbox = RhodiumHelpers.findFirstInstance(c.parent, {
			Text = "Mute",
		}).Parent.checkbox

		local blockCheckbox = RhodiumHelpers.findFirstInstance(c.parent, {
			Text = "Block",
		}).Parent.checkbox

		local doneButton = RhodiumHelpers.findFirstInstance(c.parent, {
			Text = "Done",
		})

		jestExpect(muteCheckbox).never.toBeNil()
		jestExpect(blockCheckbox).never.toBeNil()
		jestExpect(doneButton).never.toBeNil()

		act(function()
			RhodiumHelpers.clickInstance(muteCheckbox, true)
		end)

		act(function()
			RhodiumHelpers.clickInstance(doneButton)
		end)

		jestExpect(c.onMuteCheckboxActivatedMockSpy).toHaveBeenCalledTimes(1)
		jestExpect(c.onMuteCheckboxActivatedMockSpy).toHaveBeenCalledWith(true)
		jestExpect(c.onDoneActivatedMockSpy).toHaveBeenCalledTimes(1)
		jestExpect(c.onDoneActivatedMockSpy).toHaveBeenCalledWith(false, true)
	end)

	it("SHOULD only call onDoneActivated with blocked argument", function()
		local muteCheckbox = RhodiumHelpers.findFirstInstance(c.parent, {
			Text = "Mute",
		}).Parent.checkbox

		local blockCheckbox = RhodiumHelpers.findFirstInstance(c.parent, {
			Text = "Block",
		}).Parent.checkbox

		local doneButton = RhodiumHelpers.findFirstInstance(c.parent, {
			Text = "Done",
		})

		jestExpect(muteCheckbox).never.toBeNil()
		jestExpect(blockCheckbox).never.toBeNil()
		jestExpect(doneButton).never.toBeNil()

		act(function()
			RhodiumHelpers.clickInstance(blockCheckbox, true)
		end)

		act(function()
			RhodiumHelpers.clickInstance(doneButton)
		end)

		jestExpect(c.onBlockCheckboxActivatedMockSpy).toHaveBeenCalledTimes(1)
		jestExpect(c.onBlockCheckboxActivatedMockSpy).toHaveBeenCalledWith(true)
		jestExpect(c.onDoneActivatedMockSpy).toHaveBeenCalledTimes(1)
		jestExpect(c.onDoneActivatedMockSpy).toHaveBeenCalledWith(true, false)
	end)

	it("SHOULD call onDoneActivated with blocked AND muted arguments", function()
		local muteCheckbox = RhodiumHelpers.findFirstInstance(c.parent, {
			Text = "Mute",
		}).Parent.checkbox

		local blockCheckbox = RhodiumHelpers.findFirstInstance(c.parent, {
			Text = "Block",
		}).Parent.checkbox

		local doneButton = RhodiumHelpers.findFirstInstance(c.parent, {
			Text = "Done",
		})

		jestExpect(muteCheckbox).never.toBeNil()
		jestExpect(blockCheckbox).never.toBeNil()
		jestExpect(doneButton).never.toBeNil()

		act(function()
			RhodiumHelpers.clickInstance(muteCheckbox, true)
		end)

		act(function()
			RhodiumHelpers.clickInstance(blockCheckbox, true)
		end)

		act(function()
			RhodiumHelpers.clickInstance(doneButton)
		end)

		jestExpect(c.onBlockCheckboxActivatedMockSpy).toHaveBeenCalledTimes(1)
		jestExpect(c.onBlockCheckboxActivatedMockSpy).toHaveBeenCalledWith(true)
		jestExpect(c.onMuteCheckboxActivatedMockSpy).toHaveBeenCalledTimes(1)
		jestExpect(c.onMuteCheckboxActivatedMockSpy).toHaveBeenCalledWith(true)
		jestExpect(c.onDoneActivatedMockSpy).toHaveBeenCalledTimes(1)
		jestExpect(c.onDoneActivatedMockSpy).toHaveBeenCalledWith(true, true)
	end)

	it("SHOULD call onDoneActivated with neither blocked nor muted arguments", function()
		local muteCheckbox = RhodiumHelpers.findFirstInstance(c.parent, {
			Text = "Mute",
		}).Parent.checkbox

		local blockCheckbox = RhodiumHelpers.findFirstInstance(c.parent, {
			Text = "Block",
		}).Parent.checkbox

		local doneButton = RhodiumHelpers.findFirstInstance(c.parent, {
			Text = "Done",
		})

		jestExpect(muteCheckbox).never.toBeNil()
		jestExpect(blockCheckbox).never.toBeNil()
		jestExpect(doneButton).never.toBeNil()

		act(function()
			RhodiumHelpers.clickInstance(doneButton)
		end)

		jestExpect(c.onBlockCheckboxActivatedMockSpy).toHaveBeenCalledTimes(0)
		jestExpect(c.onMuteCheckboxActivatedMockSpy).toHaveBeenCalledTimes(0)
		jestExpect(c.onDoneActivatedMockSpy).toHaveBeenCalledTimes(1)
		jestExpect(c.onDoneActivatedMockSpy).toHaveBeenCalledWith(false, false)
	end)
end)
