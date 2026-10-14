--!nonstrict
local CorePackages = game:GetService("CorePackages")
local GuiService = game:GetService("GuiService")
local Players = game:GetService("Players")
local Modules = game:GetService("CoreGui").RobloxGui.Modules

local Rhodium = require(CorePackages.Packages.Dev.Rhodium)
local VirtualInput = Rhodium.VirtualInput
local act = require(CorePackages.Packages.Roact).act

local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local describe = JestGlobals.describe
local it = JestGlobals.it
local beforeEach = JestGlobals.beforeEach
local afterEach = JestGlobals.afterEach
local expect = JestGlobals.expect

local InGameMenu = Modules.InGameMenu
local OpenReportDialog = require(InGameMenu.Actions.OpenReportDialog)
local OpenReportSentDialog = require(InGameMenu.Actions.OpenReportSentDialog)

local SetMenuOpen = require(InGameMenu.Actions.SetMenuOpen)
local mountIGM = require(Modules.CoreScriptsRhodiumTest.TestHelpers["mountIGM.test"])

local c

beforeEach(function()
	c = {}
	GuiService.SelectedCoreObject = nil
	Players.LocalPlayer.PlayerGui:ClearAllChildren()

	local path, store, cleanup, gamepad = mountIGM() -- add arguments to this in mountIGM if needed
	c.path = path
	c.store = store
	c.cleanup = cleanup

	c.storeUpdate = function(action)
		act(function()
			store:dispatch(action)
			store:flush()
		end)
	end

	c.gamepadInput = function(input)
		act(function()
			gamepad:hitButton(input)
			VirtualInput.waitForInputEventsProcessed()
		end)
		act(function()
			wait()
		end)
	end
end)

afterEach(function()
	c.cleanup()
end)

describe("ReportDialog gamepad focus management", function()
	it("Should not bumper switch on ReportDialog", function()
		local store = c.store

		-- Send an input to update UserInputService.GamepadEnabled
		c.gamepadInput(Enum.KeyCode.DPadDown)

		c.storeUpdate(SetMenuOpen(true))
		c.storeUpdate(OpenReportDialog(12, "mr f"))

		c.gamepadInput(Enum.KeyCode.ButtonL1)
		expect(store:getState().currentZone).toBe(1)
		c.gamepadInput(Enum.KeyCode.ButtonR1)
		expect(store:getState().currentZone).toBe(1)
	end)

	it("Should not bumper switch on ReportSentDialog", function()
		local store = c.store

		-- Send an input to update UserInputService.GamepadEnabled
		c.gamepadInput(Enum.KeyCode.DPadDown)

		c.storeUpdate(SetMenuOpen(true))
		c.storeUpdate(OpenReportSentDialog(12, "mr f"))

		c.gamepadInput(Enum.KeyCode.ButtonL1)
		expect(store:getState().currentZone).toBe(1)
		c.gamepadInput(Enum.KeyCode.ButtonR1)
		expect(store:getState().currentZone).toBe(1)
	end)
end)
