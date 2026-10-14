--!nonstrict
local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local Modules = CoreGui.RobloxGui.Modules

local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local describe = JestGlobals.describe
local it = JestGlobals.it
local beforeEach = JestGlobals.beforeEach
local afterEach = JestGlobals.afterEach
local jestExpect = JestGlobals.expect
local jest = JestGlobals.jest

local act = require(CorePackages.Packages.Roact).act
local Rhodium = require(CorePackages.Packages.Dev.Rhodium)
local mountTopBar = require(Modules.CoreScriptsRhodiumTest.TestHelpers["mountTopBar.test"])

local TopBar = Modules.TopBar
local HeadsetDisconnectedDialog = require(TopBar.Components.Presentation.HeadsetMenu.DisconnectedDialog)

local c

beforeEach(function()
	c = {}
	c.mockCallback = jest.fn()

	local overrideConfig = {
		key = "HeadsetDisconnectedDialog",
		component = HeadsetDisconnectedDialog,
		props = {
			onConfirm = function() -- wrap jest.fn() to avoid prop validation error `function expected, got table`
				c.mockCallback()
			end,
			visible = true,
			screenSize = Vector2.new(800, 600),
		},
		policyData = nil,
	}

	local path, store, cleanup, gamepad = mountTopBar(overrideConfig)
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
			Rhodium.VirtualInput.waitForInputEventsProcessed()
		end)
		act(function()
			wait()
		end)
	end

	c.keyboardInput = function(input)
		act(function()
			Rhodium.VirtualInput.Keyboard.hitKey(input)
			Rhodium.VirtualInput.waitForInputEventsProcessed()
		end)
		act(function()
			wait()
		end)
	end
end)

afterEach(function()
	c.cleanup()
end)

describe("Headset disconnected dialog", function()
	it("should call props.onConfirm with Return key", function()
		local target = CoreGui:FindFirstChild("HeadsetDisconnectedDialog", false)

		jestExpect(target).toBeDefined()
		jestExpect(target.Enabled).toBe(true)

		c.keyboardInput(Enum.KeyCode.Return)

		jestExpect(#c.mockCallback.mock.calls).toBe(1)
	end)

	it("should call props.onConfirm with Gamepad ButtonA", function()
		local target = CoreGui:FindFirstChild("HeadsetDisconnectedDialog", false)

		jestExpect(target).toBeDefined()
		jestExpect(target.Enabled).toBe(true)

		c.gamepadInput(Enum.KeyCode.ButtonA)

		jestExpect(#c.mockCallback.mock.calls).toBe(1)
	end)
end)
