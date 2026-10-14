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

local InspectAndBuyModules = Modules:WaitForChild("InspectAndBuy")
local act = require(CorePackages.Packages.Roact).act
local mountInspectMenu = require(Modules.CoreScriptsRhodiumTest.TestHelpers["mountInspectMenu.test"])

local ControllerShortcutKeycodes = require(InspectAndBuyModules.Components.Common.ControllerShortcutKeycodes)
local FavoriteShorcutKeycode = ControllerShortcutKeycodes.Favorite
local TryOnShorcutKeycode = ControllerShortcutKeycodes.TryOn

local FFlagAXEnableNewInspectAndBuyContainer =
	require(Modules.InspectAndBuy.Flags.FFlagAXEnableNewInspectAndBuyContainer)

local c

afterEach(function()
	c.cleanup()
end)

local function sharedBeforeEach(c, _path, store, cleanup, gamepad)
	GuiService.SelectedCoreObject = nil
	Players.LocalPlayer.PlayerGui:ClearAllChildren()

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
end

describe("Assets are Roblox authored", function()
	beforeEach(function()
		c = {}
		sharedBeforeEach(c, mountInspectMenu(--[[notRobloxAuthored = ]] false))
	end)

	-- temporary skip for new inspect and buy 2.0 container
	local it = if FFlagAXEnableNewInspectAndBuyContainer then it.skip else it

	it("Should appear for Roblox item, favorite shortcut changes text", function()
		c.gamepadInput(Enum.KeyCode.ButtonA)
		c.gamepadInput(Enum.KeyCode.ButtonA)

		local controllerBarElement = CoreGui:FindFirstChild("ControllerBar", true)
		expect(controllerBarElement).never.toBeNil()
		expect(#controllerBarElement:GetChildren()).toBe(3)

		-- ensure correct text is rendered
		local leftFrame = controllerBarElement:FindFirstChild("LeftFrame")
		local rightFrame = controllerBarElement:FindFirstChild("RightFrame")

		expect(leftFrame:FindFirstChild("ControllerBarHintText", true).Text).toBe("Back")

		expect(#rightFrame:GetChildren()).toBe(4)
		expect(rightFrame:GetChildren()[1]:FindFirstChild("ControllerBarHintText", true).Text).toBe("Favorite")
		expect(rightFrame:GetChildren()[2]:FindFirstChild("ControllerBarHintText", true).Text).toBe("Try On")
		expect(rightFrame:GetChildren()[3]:FindFirstChild("ControllerBarHintText", true).Text).toBe("Confirm")

		-- favorite shortcut works
		c.gamepadInput(FavoriteShorcutKeycode)
		expect(rightFrame:GetChildren()[1]:FindFirstChild("ControllerBarHintText", true).Text).toBe("Unfavorite")

		-- try on shortcut works
		c.gamepadInput(TryOnShorcutKeycode)
		expect(rightFrame:GetChildren()[2]:FindFirstChild("ControllerBarHintText", true).Text).never.toBe("Take off")
		c.gamepadInput(TryOnShorcutKeycode)
		expect(rightFrame:GetChildren()[2]:FindFirstChild("ControllerBarHintText", true).Text).never.toBe("Try on")
	end)
end)

describe("Assets are not Roblox authored.", function()
	beforeEach(function()
		c = {}
		sharedBeforeEach(c, mountInspectMenu(--[[notRobloxAuthored = ]] true))
	end)

	-- temporary skip for new inspect and buy 2.0 container
	local it = if FFlagAXEnableNewInspectAndBuyContainer then it.skip else it

	it("Non-roblox item should be favoritable", function()
		c.gamepadInput(Enum.KeyCode.ButtonA)
		c.gamepadInput(Enum.KeyCode.ButtonA)

		local controllerBarElement = CoreGui:FindFirstChild("ControllerBar", true)
		expect(controllerBarElement).never.toBeNil()
		expect(#controllerBarElement:GetChildren()).toBe(3)

		-- ensure correct text is rendered
		local rightFrame = controllerBarElement:FindFirstChild("RightFrame")
		expect(#rightFrame:GetChildren()).toBe(4)
		expect(rightFrame:GetChildren()[1]:FindFirstChild("ControllerBarHintText", true).Text).toBe("Favorite")
		expect(rightFrame:GetChildren()[2]:FindFirstChild("ControllerBarHintText", true).Text).toBe("Try On")
		expect(rightFrame:GetChildren()[3]:FindFirstChild("ControllerBarHintText", true).Text).toBe("Confirm")

		-- favorite shortcut works
		c.gamepadInput(FavoriteShorcutKeycode)
		expect(rightFrame:GetChildren()[1]:FindFirstChild("ControllerBarHintText", true).Text).toBe("Unfavorite")
	end)
end)
