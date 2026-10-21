--!nonstrict
local CorePackages = game:GetService("CorePackages")
local Modules = game:GetService("CoreGui").RobloxGui.Modules
local GuiService = game:GetService("GuiService")
local Players = game:GetService("Players")

local act = require(CorePackages.Packages.Roact).act
local Rhodium = require(CorePackages.Packages.Dev.Rhodium)
local VirtualInput = Rhodium.VirtualInput

local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local describe = JestGlobals.describe
local it = JestGlobals.it
local beforeEach = JestGlobals.beforeEach
local afterEach = JestGlobals.afterEach
local expect = JestGlobals.expect

local InGameMenu = Modules.InGameMenu
local SetCurrentPage = require(InGameMenu.Actions.SetCurrentPage)
local SetMenuOpen = require(InGameMenu.Actions.SetMenuOpen)
local mountIGM = require(Modules.CoreScriptsRhodiumTest.TestHelpers["mountIGM.test"])
local waitForIGMPage = require(Modules.CoreScriptsRhodiumTest.TestHelpers["waitForIGMPage.test"])
local TestUtils = require(CorePackages.Workspace.Packages.TestUtils)
local waitForEvents = TestUtils.DeferredLuaHelpers.waitForEvents
local waitUntil = TestUtils.waitUntil

local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagCoreUiMigrateUIBloxToFoundation = SharedFlags.FFlagCoreUiMigrateUIBloxToFoundation

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
		waitForEvents.act()
	end

	c.gamepadInput = function(input)
		act(function()
			gamepad:hitButton(input)
			VirtualInput.waitForInputEventsProcessed()
		end)
		waitForEvents.act()
	end
end)

afterEach(function()
	c.cleanup()
end)

-- Foundation migration (APPEXP-4897) changes the contextual menu's UI tree
-- structure, making these gamepad-focus assertions unreliable under allOn.
-- Skip when the migration flag is active.
local function getSelectedText()
	local selected = GuiService.SelectedCoreObject
	local text = selected and selected:FindFirstChild("Text", true)
	return text and text.Text
end

local function waitForSelectedText(expectedText)
	waitUntil(function()
		return getSelectedText() == expectedText
	end)
	expect(getSelectedText()).toBe(expectedText)
end

local function waitForSelectedName(expectedName)
	waitUntil(function()
		return tostring(GuiService.SelectedCoreObject) == expectedName
	end)
	expect(tostring(GuiService.SelectedCoreObject)).toBe(expectedName)
end

if not FFlagCoreUiMigrateUIBloxToFoundation then
	describe("Players page contextual menu", function()
		it("Opens when a player is selected", function()
			-- Send an input to update UserInputService.GamepadEnabled
			c.gamepadInput(Enum.KeyCode.DPadDown)

			c.storeUpdate(SetMenuOpen(true))
			c.storeUpdate(SetCurrentPage("Players"))
			waitForIGMPage(c.path, "Players")

			-- Open the contextual menu on the first selected player
			c.gamepadInput(Enum.KeyCode.ButtonA)
			waitForSelectedText("Examine Avatar")
		end)

		it("Exits when pressing B and selects the player again", function()
			-- Send an input to update UserInputService.GamepadEnabled
			c.gamepadInput(Enum.KeyCode.DPadDown)

			c.storeUpdate(SetMenuOpen(true))
			c.storeUpdate(SetCurrentPage("Players"))
			waitForIGMPage(c.path, "Players")

			-- Open the contextual menu on the first selected player
			c.gamepadInput(Enum.KeyCode.ButtonA)
			waitForSelectedText("Examine Avatar")

			-- Exits
			c.gamepadInput(Enum.KeyCode.ButtonB)
			-- TODO for some reason the default name of the local player changes between all flags on and default flags
			local playerString = "player_1"
			if game:GetFastFlag("LuaMenuPerfImprovements") then
				playerString = "player_12345678"
			end
			waitForSelectedName(playerString)
		end)

		it("Ignores input if canCaptureFocus is false", function()
			local store = c.store

			-- Send an input to update UserInputService.GamepadEnabled
			c.gamepadInput(Enum.KeyCode.DPadDown)

			c.storeUpdate(SetMenuOpen(true))
			c.storeUpdate(SetCurrentPage("Players"))
			waitForIGMPage(c.path, "Players")

			-- Open the contextual menu
			c.gamepadInput(Enum.KeyCode.ButtonA)
			waitForSelectedText("Examine Avatar")

			-- Open the Respawn dialog
			c.gamepadInput(Enum.KeyCode.ButtonY)
			expect(store:getState().respawn.dialogOpen).toBe(true)

			-- Pressing B closes the dialog, not the contextual menu
			c.gamepadInput(Enum.KeyCode.ButtonB)
			expect(store:getState().respawn.dialogOpen).toBe(false)
			waitForSelectedText("Examine Avatar")

			-- Contextual menu is capturing input again, can now be closed
			c.gamepadInput(Enum.KeyCode.ButtonB)
			-- TODO for some reason the default name of the local player changes between all flags on and default flags
			local playerString = "player_1"
			if game:GetFastFlag("LuaMenuPerfImprovements") then
				playerString = "player_12345678"
			end
			waitForSelectedName(playerString)
		end)

		it("Does not abandon the bounds of the menu", function()
			-- Send an input to update UserInputService.GamepadEnabled
			c.gamepadInput(Enum.KeyCode.DPadDown)

			c.storeUpdate(SetMenuOpen(true))
			c.storeUpdate(SetCurrentPage("Players"))
			waitForIGMPage(c.path, "Players")

			-- Open the contextual menu
			c.gamepadInput(Enum.KeyCode.ButtonA)
			waitForSelectedText("Examine Avatar")

			-- Tries to exit the menu area
			c.gamepadInput(Enum.KeyCode.DPadDown)
			waitForSelectedText("Examine Avatar")

			c.gamepadInput(Enum.KeyCode.DPadLeft)
			waitForSelectedText("Examine Avatar")
		end)
	end)
end

it("should switch between the page and SideNavigation", function()
	local store = c.store

	-- Send an input to update UserInputService.GamepadEnabled
	c.gamepadInput(Enum.KeyCode.DPadDown)

	c.storeUpdate(SetMenuOpen(true))
	c.storeUpdate(SetCurrentPage("Players"))

	waitForIGMPage(c.path, "Players")

	expect(store:getState().currentZone).toBe(1)

	c.gamepadInput(Enum.KeyCode.DPadLeft)
	expect(store:getState().currentZone).toBe(0)

	c.gamepadInput(Enum.KeyCode.DPadRight)
	expect(store:getState().currentZone).toBe(1)
end)
