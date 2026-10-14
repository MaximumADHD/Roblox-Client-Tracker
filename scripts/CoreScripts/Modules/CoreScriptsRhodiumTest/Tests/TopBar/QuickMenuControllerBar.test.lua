--!nonstrict
local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local GuiService = game:GetService("GuiService")
local Players = game:GetService("Players")
local Modules = CoreGui.RobloxGui.Modules

local Rhodium = require(CorePackages.Packages.Dev.Rhodium)
local VirtualInput = Rhodium.VirtualInput

local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local describe = JestGlobals.describe
local it = JestGlobals.it
local beforeEach = JestGlobals.beforeEach
local afterEach = JestGlobals.afterEach
local expect = JestGlobals.expect

local TopBar = Modules.TopBar
local QuickMenu = require(TopBar.Components.Presentation.GamepadMenu)
local SetGamepadMenuOpen = require(TopBar.Actions.SetGamepadMenuOpen)

local act = require(CorePackages.Packages.Roact).act
local mountTopBar = require(Modules.CoreScriptsRhodiumTest.TestHelpers["mountTopBar.test"])

local FFlagTopBarDeprecateCoreGuiRodux = require(TopBar.Flags.FFlagTopBarDeprecateCoreGuiRodux)
local FFlagTopBarDeprecateChatRodux = require(TopBar.Flags.FFlagTopBarDeprecateChatRodux)

if FFlagTopBarDeprecateCoreGuiRodux or FFlagTopBarDeprecateChatRodux then
	describe = describe.skip
	beforeEach = function() end
	afterEach = function() end
end

local c

beforeEach(function()
	c = {}
	GuiService.SelectedCoreObject = nil
	Players.LocalPlayer.PlayerGui:ClearAllChildren()
	local path, store, cleanup, gamepad = mountTopBar({
		key = "QuickMenu",
		component = QuickMenu,
	})
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

	c.keyboardInput = function(input)
		act(function()
			Rhodium.VirtualInput.Keyboard.hitKey(input)
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

describe("Controller bar", function()
	it("Should appear/disappear with QuickMenu", function()
		c.storeUpdate(SetGamepadMenuOpen(true))

		local controllerBarElement = CoreGui.QuickMenuControllerBar.ControllerBar
		expect(controllerBarElement).never.toBeNil()
		expect(#controllerBarElement:GetChildren()).toBe(3)

		-- ensure correct text is rendered
		local leftFrame = controllerBarElement:FindFirstChild("LeftFrame")
		local rightFrame = controllerBarElement:FindFirstChild("RightFrame")

		expect(leftFrame:FindFirstChild("ControllerBarHintText", true).Text).toBe("Back")

		expect(rightFrame:GetChildren()[1]:FindFirstChild("ControllerBarHintText", true).Text).toBe("Hide Chat")
		expect(rightFrame:GetChildren()[2]:FindFirstChild("ControllerBarHintText", true).Text).toBe("Respawn Character")
		expect(rightFrame:GetChildren()[3]:FindFirstChild("ControllerBarHintText", true).Text).toBe("Leave")

		-- Close menu
		c.gamepadInput(Enum.KeyCode.ButtonB)
		local controllerBarElement = CoreGui:FindFirstChild("ControllerBar", true)
		expect(controllerBarElement).toBeNil()
	end)
	it("Should close with respawn", function()
		c.storeUpdate(SetGamepadMenuOpen(true))

		local controllerBarElement = CoreGui:FindFirstChild("ControllerBar", true)
		expect(controllerBarElement).never.toBeNil()
		expect(#controllerBarElement:GetChildren()).toBe(3)

		-- Respawn
		c.gamepadInput(Enum.KeyCode.ButtonY)

		-- ensure other controllerBar is now on screen
		controllerBarElement = CoreGui:FindFirstChild("ControllerBar", true)
		expect(controllerBarElement).toBeNil()
	end)
	it("Should disappear with leaveGame", function()
		c.storeUpdate(SetGamepadMenuOpen(true))

		local controllerBarElement = CoreGui:FindFirstChild("ControllerBar", true)
		expect(controllerBarElement).never.toBeNil()
		expect(#controllerBarElement:GetChildren()).toBe(3)

		-- Respawn
		c.gamepadInput(Enum.KeyCode.ButtonX)
		controllerBarElement = CoreGui:FindFirstChild("ControllerBar", true)
		expect(controllerBarElement).toBeNil()
	end)
end)
