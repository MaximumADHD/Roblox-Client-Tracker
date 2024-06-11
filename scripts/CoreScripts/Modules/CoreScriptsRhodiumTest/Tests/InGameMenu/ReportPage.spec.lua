--!nonstrict
local CorePackages = game:GetService("CorePackages")
local GuiService = game:GetService("GuiService")
local Players = game:GetService("Players")
local Modules = game:GetService("CoreGui").RobloxGui.Modules

local Rhodium = require(CorePackages.Rhodium)
local VirtualInput = Rhodium.VirtualInput
local Element = Rhodium.Element
local XPath = Rhodium.XPath

local JestGlobals = require(CorePackages.JestGlobals)
local expect = JestGlobals.expect

local InGameMenu = Modules.InGameMenu
local SetCurrentPage = require(InGameMenu.Actions.SetCurrentPage)
local SetMenuOpen = require(InGameMenu.Actions.SetMenuOpen)
local OpenReportDialog = require(InGameMenu.Actions.OpenReportDialog)

local act = require(CorePackages.Roact).act

local Flags = InGameMenu.Flags

local TestConstants = require(script.Parent.TestConstants)

return function()
	beforeEach(function(c)
		GuiService.SelectedCoreObject = nil
		Players.LocalPlayer.PlayerGui:ClearAllChildren()
		local path, store, cleanup, gamepad = c.mountIGM() -- add arguments to this in init file if needed
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

	afterEach(function(c)
		c.cleanup()
	end)

	it("should switch between the page and SideNavigation", function(c)
		local store = c.store

		-- Send an input to update UserInputService.GamepadEnabled
		c.gamepadInput(Enum.KeyCode.DPadDown)

		c.storeUpdate(SetMenuOpen(true))
		c.storeUpdate(SetCurrentPage("Report"))

		act(function()
			wait(TestConstants.PageAnimationDuration) -- Wait for the page to finish animating in
		end)

		expect(store:getState().currentZone).toBe(1)

		c.gamepadInput(Enum.KeyCode.DPadLeft)
		expect(store:getState().currentZone).toBe(0)

		c.gamepadInput(Enum.KeyCode.DPadRight)
		expect(store:getState().currentZone).toBe(1)
	end)

	it("Should bumper switch", function(c)
		local store = c.store

		-- Send an input to update UserInputService.GamepadEnabled
		c.gamepadInput(Enum.KeyCode.DPadDown)

		c.storeUpdate(SetMenuOpen(true))
		c.storeUpdate(SetCurrentPage("Report"))

		c.gamepadInput(Enum.KeyCode.ButtonL1)
		expect(store:getState().currentZone).toBe(0)
		c.gamepadInput(Enum.KeyCode.ButtonR1)
		expect(store:getState().currentZone).toBe(1)
	end)
end
