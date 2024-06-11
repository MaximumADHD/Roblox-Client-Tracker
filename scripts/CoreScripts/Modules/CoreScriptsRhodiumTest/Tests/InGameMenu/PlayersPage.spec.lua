--!nonstrict
local CorePackages = game:GetService("CorePackages")
local Modules = game:GetService("CoreGui").RobloxGui.Modules
local GuiService = game:GetService("GuiService")
local Players = game:GetService("Players")

local act = require(CorePackages.Roact).act
local Rhodium = require(CorePackages.Rhodium)
local VirtualInput = Rhodium.VirtualInput

local JestGlobals = require(CorePackages.JestGlobals)
local expect = JestGlobals.expect

local InGameMenu = Modules.InGameMenu
local SetCurrentPage = require(InGameMenu.Actions.SetCurrentPage)
local SetMenuOpen = require(InGameMenu.Actions.SetMenuOpen)
local Flags = InGameMenu.Flags

local TestConstants = require(script.Parent.TestConstants)

return function()
	beforeEach(function(c)
		GuiService.SelectedCoreObject = nil
		Players.LocalPlayer.PlayerGui:ClearAllChildren()
		local _path, store, cleanup, gamepad = c.mountIGM() -- add arguments to this in init file if needed
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

	describe("Players page contextual menu", function()
		it("Opens when a player is selected", function(c)
			-- Send an input to update UserInputService.GamepadEnabled
			c.gamepadInput(Enum.KeyCode.DPadDown)

			c.storeUpdate(SetMenuOpen(true))
			c.storeUpdate(SetCurrentPage("Players"))

			-- Open the contextual menu on the first selected player
			c.gamepadInput(Enum.KeyCode.ButtonA)
			expect(GuiService.SelectedCoreObject:FindFirstChild("Text", true).Text).toBe("Examine Avatar")
		end)

		it("Exits when pressing B and selects the player again", function(c)
			-- Send an input to update UserInputService.GamepadEnabled
			c.gamepadInput(Enum.KeyCode.DPadDown)

			c.storeUpdate(SetMenuOpen(true))
			c.storeUpdate(SetCurrentPage("Players"))

			-- Open the contextual menu on the first selected player
			c.gamepadInput(Enum.KeyCode.ButtonA)
			expect(GuiService.SelectedCoreObject:FindFirstChild("Text", true).Text).toBe("Examine Avatar")

			-- Exits
			c.gamepadInput(Enum.KeyCode.ButtonB)
			-- TODO for some reason the default name of the local player changes between all flags on and default flags
			local playerString = "player_1"
			if game:GetFastFlag("LuaMenuPerfImprovements") then
				playerString = "player_12345678"
			end
			expect(tostring(GuiService.SelectedCoreObject)).toBe(playerString)
		end)

		it("Ignores input if canCaptureFocus is false", function(c)
			local store = c.store

			-- Send an input to update UserInputService.GamepadEnabled
			c.gamepadInput(Enum.KeyCode.DPadDown)

			c.storeUpdate(SetMenuOpen(true))
			c.storeUpdate(SetCurrentPage("Players"))

			-- Open the contextual menu
			c.gamepadInput(Enum.KeyCode.ButtonA)
			expect(GuiService.SelectedCoreObject:FindFirstChild("Text", true).Text).toBe("Examine Avatar")

			-- Open the Respawn dialog
			c.gamepadInput(Enum.KeyCode.ButtonY)
			expect(store:getState().respawn.dialogOpen).toBe(true)

			-- Pressing B closes the dialog, not the contextual menu
			c.gamepadInput(Enum.KeyCode.ButtonB)
			expect(store:getState().respawn.dialogOpen).toBe(false)
			expect(GuiService.SelectedCoreObject:FindFirstChild("Text", true).Text).toBe("Examine Avatar")

			-- Contextual menu is capturing input again, can now be closed
			c.gamepadInput(Enum.KeyCode.ButtonB)
			-- TODO for some reason the default name of the local player changes between all flags on and default flags
			local playerString = "player_1"
			if game:GetFastFlag("LuaMenuPerfImprovements") then
				playerString = "player_12345678"
			end
			expect(tostring(GuiService.SelectedCoreObject)).toBe(playerString)
		end)

		it("Does not abandon the bounds of the menu", function(c)
			-- Send an input to update UserInputService.GamepadEnabled
			c.gamepadInput(Enum.KeyCode.DPadDown)

			c.storeUpdate(SetMenuOpen(true))
			c.storeUpdate(SetCurrentPage("Players"))

			-- Open the contextual menu
			c.gamepadInput(Enum.KeyCode.ButtonA)
			expect(GuiService.SelectedCoreObject:FindFirstChild("Text", true).Text).toBe("Examine Avatar")

			-- Tries to exit the menu area
			c.gamepadInput(Enum.KeyCode.DPadDown)
			expect(GuiService.SelectedCoreObject:FindFirstChild("Text", true).Text).toBe("Examine Avatar")

			c.gamepadInput(Enum.KeyCode.DPadLeft)
			expect(GuiService.SelectedCoreObject:FindFirstChild("Text", true).Text).toBe("Examine Avatar")
		end)
	end)

	it("should switch between the page and SideNavigation", function(c)
		local store = c.store

		-- Send an input to update UserInputService.GamepadEnabled
		c.gamepadInput(Enum.KeyCode.DPadDown)

		c.storeUpdate(SetMenuOpen(true))
		c.storeUpdate(SetCurrentPage("Players"))

		act(function()
			wait(TestConstants.PageAnimationDuration) -- Wait for the page to finish animating in
		end)

		expect(store:getState().currentZone).toBe(1)

		c.gamepadInput(Enum.KeyCode.DPadLeft)
		expect(store:getState().currentZone).toBe(0)

		c.gamepadInput(Enum.KeyCode.DPadRight)
		expect(store:getState().currentZone).toBe(1)
	end)
end
