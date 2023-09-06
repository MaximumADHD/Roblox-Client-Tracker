--!nonstrict
local CorePackages = game:GetService("CorePackages")
local GuiService = game:GetService("GuiService")
local Players = game:GetService("Players")
local Modules = game:GetService("CoreGui").RobloxGui.Modules

local Rhodium = require(CorePackages.Rhodium)
local VirtualInput = Rhodium.VirtualInput
local act = require(Modules.act)

local JestGlobals = require(CorePackages.JestGlobals)
local expect = JestGlobals.expect

local InGameMenu = Modules.InGameMenu
local SetRespawning = require(InGameMenu.Actions.SetRespawning)

local SetMenuOpen = require(InGameMenu.Actions.SetMenuOpen)

local Flags = InGameMenu.Flags

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

	describe("RespawnDialog gamepad focus management", function()
		it("Should not bumper switch on RespawnDialog", function(c)
			local store = c.store

			-- Send an input to update UserInputService.GamepadEnabled
			c.gamepadInput(Enum.KeyCode.DPadDown)

			c.storeUpdate(SetMenuOpen(true))
			c.storeUpdate(SetRespawning(true))

			c.gamepadInput(Enum.KeyCode.ButtonL1)
			expect(store:getState().currentZone).toBe(1)
			c.gamepadInput(Enum.KeyCode.ButtonR1)
			expect(store:getState().currentZone).toBe(1)
		end)
	end)
end
