--!nonstrict
local CorePackages = game:GetService("CorePackages")
local GuiService = game:GetService("GuiService")
local Players = game:GetService("Players")
local Modules = game:GetService("CoreGui").RobloxGui.Modules

local Rhodium = require(CorePackages.Packages.Dev.Rhodium)
local VirtualInput = Rhodium.VirtualInput
local Element = Rhodium.Element
local XPath = Rhodium.XPath
local act = require(CorePackages.Packages.Roact).act

local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local describe = JestGlobals.describe
local it = JestGlobals.it
local beforeEach = JestGlobals.beforeEach
local afterEach = JestGlobals.afterEach
local expect = JestGlobals.expect

local InGameMenu = Modules.InGameMenu
local SetCurrentPage = require(InGameMenu.Actions.SetCurrentPage)
local SetMenuOpen = require(InGameMenu.Actions.SetMenuOpen)
local Constants = require(InGameMenu.Resources.Constants)
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

describe("ControlsPage gamepad focus management", function()
	it("should select the close button when opened and navigate back when activated", function()
		local store = c.store

		local closeButtonPath =
			XPath.new("game.CoreGui.InGameMenuModalBlur.GamepadControls.HeaderContainer.CloseButton")
		local closeButtonElement = Element.new(closeButtonPath)

		-- Send an input to update currently used input device
		c.gamepadInput(Enum.KeyCode.DPadDown)

		c.storeUpdate(SetMenuOpen(true))
		c.storeUpdate(SetCurrentPage(Constants.MainPagePageKey))

		expect(GuiService.SelectedCoreObject).never.toBeNil()

		c.gamepadInput(Enum.KeyCode.DPadDown)
		c.gamepadInput(Enum.KeyCode.DPadDown)
		c.gamepadInput(Enum.KeyCode.DPadDown)
		c.gamepadInput(Enum.KeyCode.DPadDown)
		expect(GuiService.SelectedCoreObject.ContentContainer.Text.Text).toBe("Controls...")

		c.gamepadInput(Enum.KeyCode.ButtonA)
		expect(store:getState().menuPage).toBe("Controls")
		expect(GuiService.SelectedCoreObject).toBe(closeButtonElement:waitForRbxInstance(1))

		c.gamepadInput(Enum.KeyCode.ButtonA)
		expect(store:getState().menuPage).toBe(Constants.MainPagePageKey)
		expect(GuiService.SelectedCoreObject).never.toBe(closeButtonElement:getRbxInstance())
	end)

	it("should navigate back when pressing B", function()
		local store = c.store

		-- Send an input to update currently used input device
		c.gamepadInput(Enum.KeyCode.DPadDown)

		c.storeUpdate(SetMenuOpen(true))
		c.storeUpdate(SetCurrentPage(Constants.MainPagePageKey))

		expect(GuiService.SelectedCoreObject).never.toBeNil()

		c.gamepadInput(Enum.KeyCode.DPadDown)
		c.gamepadInput(Enum.KeyCode.DPadDown)
		c.gamepadInput(Enum.KeyCode.DPadDown)
		c.gamepadInput(Enum.KeyCode.DPadDown)
		expect(GuiService.SelectedCoreObject.ContentContainer.Text.Text).toBe("Controls...")

		c.gamepadInput(Enum.KeyCode.ButtonA)
		expect(store:getState().menuPage).toBe("Controls")

		c.gamepadInput(Enum.KeyCode.ButtonB)
		expect(store:getState().menuPage).toBe(Constants.MainPagePageKey)
	end)

	it("Should not bumper switch", function()
		local store = c.store

		-- Send an input to update UserInputService.GamepadEnabled
		c.gamepadInput(Enum.KeyCode.DPadDown)

		c.storeUpdate(SetMenuOpen(true))
		c.storeUpdate(SetCurrentPage("Controls"))

		c.gamepadInput(Enum.KeyCode.ButtonL1)
		expect(store:getState().currentZone).toBe(1)
		c.gamepadInput(Enum.KeyCode.ButtonR1)
		expect(store:getState().currentZone).toBe(1)
	end)
end)
