--!nonstrict
local CorePackages = game:GetService("CorePackages")
local GuiService = game:GetService("GuiService")
local Players = game:GetService("Players")
local Modules = game:GetService("CoreGui").RobloxGui.Modules

local Rhodium = require(CorePackages.Rhodium)
local VirtualInput = Rhodium.VirtualInput
local act = require(CorePackages.Roact).act

local JestGlobals = require(CorePackages.JestGlobals)
local expect = JestGlobals.expect

local InGameMenu = Modules.InGameMenu
local SetCurrentPage = require(InGameMenu.Actions.SetCurrentPage)
local SetMenuOpen = require(InGameMenu.Actions.SetMenuOpen)
local Constants = require(InGameMenu.Resources.Constants)

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
		c.gamepadInput = function(input)
			act(function()
				gamepad:hitButton(input)
				VirtualInput.waitForInputEventsProcessed()
			end)
			act(function()
				wait()
			end)
		end

		-- Send an input to update currently used input device
		act(function()
			gamepad:hitButton(Enum.KeyCode.DPadDown)
			VirtualInput.waitForInputEventsProcessed()
			wait()
		end)

		act(function()
			c.store:dispatch(SetMenuOpen(true))
			c.store:flush()
			wait()
		end)
		act(function()
			c.store:dispatch(SetCurrentPage(Constants.LeaveGamePromptPageKey))
			c.store:flush()
			wait()
		end)
	end)

	afterEach(function(c)
		c.cleanup()
	end)

	describe("In-Game Menu LeaveGamePrompt page focus management", function()
		it("should switch between the page and SideNavigation", function(c)
			local store = c.store

			act(function()
				wait(TestConstants.PageAnimationDuration) -- Wait for the page to finish animating in
			end)

			expect(store:getState().currentZone).toBe(1)

			c.gamepadInput(Enum.KeyCode.DPadLeft)
			expect(store:getState().currentZone).toBe(0)

			c.gamepadInput(Enum.KeyCode.DPadRight)
			expect(store:getState().currentZone).toBe(1)
		end)
	end)
end
