--!nonstrict
local CorePackages = game:GetService("CorePackages")
local GuiService = game:GetService("GuiService")
local Players = game:GetService("Players")
local Modules = game:GetService("CoreGui").RobloxGui.Modules

local Rhodium = require(CorePackages.Packages.Dev.Rhodium)
local VirtualInput = Rhodium.VirtualInput

local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local it = JestGlobals.it
local beforeEach = JestGlobals.beforeEach
local afterEach = JestGlobals.afterEach
local expect = JestGlobals.expect

local InGameMenu = Modules.InGameMenu
local SetCurrentPage = require(InGameMenu.Actions.SetCurrentPage)
local SetMenuOpen = require(InGameMenu.Actions.SetMenuOpen)
local OpenReportDialog = require(InGameMenu.Actions.OpenReportDialog)

local act = require(CorePackages.Packages.Roact).act
local mountIGM = require(Modules.CoreScriptsRhodiumTest.TestHelpers["mountIGM.test"])

local TestConstants = require(script.Parent.TestConstants)

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
		act(function()
			wait()
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

it("should switch between the page and SideNavigation", function()
	local store = c.store

	-- Send an input to update UserInputService.GamepadEnabled
	c.gamepadInput(Enum.KeyCode.DPadDown)

	c.storeUpdate(SetMenuOpen(true))
	c.storeUpdate(SetCurrentPage("Report"))

	act(function()
		wait(TestConstants.PageAnimationDuration) -- Wait for the page to finish animating in
	end)

	expect(store:getState().currentZone).toBe(1)

	act(function()
		c.gamepadInput(Enum.KeyCode.DPadLeft)
		wait()
	end)
	expect(store:getState().currentZone).toBe(0)

	act(function()
		c.gamepadInput(Enum.KeyCode.DPadRight)
		wait()
	end)
	expect(store:getState().currentZone).toBe(1)
end)

it("Should bumper switch", function()
	local store = c.store

	-- Send an input to update UserInputService.GamepadEnabled
	c.gamepadInput(Enum.KeyCode.DPadDown)

	c.storeUpdate(SetMenuOpen(true))
	c.storeUpdate(SetCurrentPage("Report"))

	act(function()
		c.gamepadInput(Enum.KeyCode.ButtonL1)
		wait()
	end)
	expect(store:getState().currentZone).toBe(0)
	act(function()
		c.gamepadInput(Enum.KeyCode.ButtonR1)
		wait()
	end)
	expect(store:getState().currentZone).toBe(1)
end)
