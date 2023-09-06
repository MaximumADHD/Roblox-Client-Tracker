--!nonstrict
local GuiService = game:GetService("GuiService")
local Players = game:GetService("Players")
local CorePackages = game:GetService("CorePackages")
local Modules = game:GetService("CoreGui").RobloxGui.Modules

local Rhodium = require(CorePackages.Rhodium)
local VirtualInput = Rhodium.VirtualInput

local JestGlobals = require(CorePackages.JestGlobals)
local jest = JestGlobals.jest
local expect = JestGlobals.expect

local InGameMenu = Modules.InGameMenu
local SendAnalytics = require(InGameMenu.Utility.SendAnalytics)

local Flags = InGameMenu.Flags

return function()
	beforeAll(function()
		GuiService.SelectedCoreObject = nil
		Players.LocalPlayer.PlayerGui:ClearAllChildren()
	end)

	beforeEach(function(c)
		c.SetRBXEventStreamSpy = jest.fn()
		c.analyticsServiceImpl = {
			SetRBXEventStream = c.SetRBXEventStreamSpy
		}

		c.gamepad = Rhodium.VirtualInput.GamePad.new()
	end)

	afterEach(function(c)
		c.gamepad:disconnect()
	end)

	-- Using an integration test to use VirtualInput
	describe("SendAnalytics", function()
		it("Calls the analytics service with provided parameters", function(c)
			local analyticsServiceImpl = c.analyticsServiceImpl

			local ctx = "event_context"
			local evt = "event_name"
			local params = {testParam = "test"}

			SendAnalytics(ctx, evt, params, false, analyticsServiceImpl)

			expect(c.SetRBXEventStreamSpy).toHaveBeenCalledTimes(1)
			expect(c.SetRBXEventStreamSpy).toHaveBeenCalledWith(expect.anything(), "client", ctx, evt, params)
		end)

		it("Appends the latest used input device to the params table", function(c)
			local analyticsServiceImpl = c.analyticsServiceImpl
			local gamepad = c.gamepad

			local ctx = "event_context"
			local evt = "event_name"
			local params = {testParam = "test"}

			VirtualInput.Keyboard.pressKey(Enum.KeyCode.L)
			VirtualInput.waitForInputEventsProcessed()
			wait()

			SendAnalytics(ctx, evt, params, false, analyticsServiceImpl)

			expect(c.SetRBXEventStreamSpy.mock.calls[1][5]).toMatchObject({
				testParam = "test",
				inputDevice = "MouseAndKeyboard",
			})

			params = {testParam = "test2"}
			gamepad:hitButton(Enum.KeyCode.DPadDown)
			VirtualInput.waitForInputEventsProcessed()
			wait()

			SendAnalytics(ctx, evt, params, false, analyticsServiceImpl)
			expect(c.SetRBXEventStreamSpy.mock.calls[2][5].inputDevice).toBe("Gamepad")
		end)

		it("Uses directly the lastUsedInput value if it's not in our mapping", function(c)
			local analyticsServiceImpl = c.analyticsServiceImpl
			local gamepad = c.gamepad

			local ctx = "event_context"
			local evt = "event_name"
			local params = {testParam = "test"}

			VirtualInput.Text.sendText("test")
			VirtualInput.waitForInputEventsProcessed()
			wait()

			SendAnalytics(ctx, evt, params, false, analyticsServiceImpl)

			expect(c.SetRBXEventStreamSpy.mock.calls[1][5].inputDevice).toBe("Enum.UserInputType.TextInput")
		end)

		it("Appends the input even when reportSettingsForAnalytics is true", function(c)
			local analyticsServiceImpl = c.analyticsServiceImpl
			local gamepad = c.gamepad

			local ctx = "event_context"
			local evt = "event_name"
			local params = {testParam = "test"}

			VirtualInput.Keyboard.pressKey(Enum.KeyCode.L)
			VirtualInput.waitForInputEventsProcessed()
			wait()

			SendAnalytics(ctx, evt, params, true, analyticsServiceImpl)

			expect(c.SetRBXEventStreamSpy.mock.calls[1][5].camera_y_inverted).never.toBeNil()
			expect(c.SetRBXEventStreamSpy.mock.calls[1][5].inputDevice).toBe("MouseAndKeyboard")
		end)

		it("Does not append setting values when reportSettingsForAnalytics is false", function(c)
			local analyticsServiceImpl = c.analyticsServiceImpl
			local gamepad = c.gamepad

			local ctx = "event_context"
			local evt = "event_name"
			local params = {testParam = "test"}

			SendAnalytics(ctx, evt, params, false, analyticsServiceImpl)

			expect(c.SetRBXEventStreamSpy.mock.calls[1][5].camera_y_inverted).toBeNil()
		end)
	end)
end
