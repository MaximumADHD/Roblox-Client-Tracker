--!nonstrict
local CorePackages = game:GetService("CorePackages")
local GuiService = game:GetService("GuiService")
local Players = game:GetService("Players")
local RobloxReplicatedStorage = game:GetService("RobloxReplicatedStorage")
local Modules = game:GetService("CoreGui").RobloxGui.Modules

local UserGameSettings = UserSettings():GetService("UserGameSettings")
local DevConsoleMaster = require(Modules.DevConsoleMaster)
local act = require(Modules.act)

local Rhodium = require(CorePackages.Rhodium)
local VirtualInput = Rhodium.VirtualInput
local Element = Rhodium.Element
local XPath = Rhodium.XPath

local JestGlobals = require(CorePackages.JestGlobals)
local expect = JestGlobals.expect

local InGameMenu = Modules.InGameMenu
local SetCurrentPage = require(InGameMenu.Actions.SetCurrentPage)
local SetMenuOpen = require(InGameMenu.Actions.SetMenuOpen)

local TestConstants = require(script.Parent.TestConstants)

local Flags = InGameMenu.Flags

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
			c.store:dispatch(SetCurrentPage("AdvancedGameSettings"))
			c.store:flush()
			wait()
		end)
	end)

	afterEach(function(c)
		c.cleanup()
	end)

	describe("In-Game Menu Advanced Settings page focus management", function()
		it("should select the performance toggle ref by default", function(c)
			local path = XPath.new(c.path)
			local perfStatsTogglePath = path:cat(XPath.new("PageContainer.AdvancedGameSettings.Page.PageContainer.PerformanceStats.Toggle"))
			local perfStatsToggle = Element.new(perfStatsTogglePath)

			expect(GuiService.SelectedCoreObject).never.toBeNil()
			expect(GuiService.SelectedCoreObject).toBe(perfStatsToggle:getRbxInstance())
		end)

		it("should select page back button when moving selection up and perf stats toggle when moving selection down", function(c)
			local path = XPath.new(c.path)
			act(function()
				wait(0.2)
			end)

			local perfStatsTogglePath = path:cat(XPath.new("PageContainer.AdvancedGameSettings.Page.PageContainer.PerformanceStats.Toggle"))
			local perfStatsToggle = Element.new(perfStatsTogglePath)
			local backButtonPath = path:cat(XPath.new("PageContainer.AdvancedGameSettings.Page.PageTitle.BackButton"))
			local backButton = Element.new(backButtonPath)

			expect(GuiService.SelectedCoreObject).never.toBeNil()
			expect(GuiService.SelectedCoreObject).toBe(perfStatsToggle:getRbxInstance())

			c.gamepadInput(Enum.KeyCode.DPadUp)

			expect(GuiService.SelectedCoreObject).never.toBeNil()
			expect(GuiService.SelectedCoreObject).toBe(backButton:getRbxInstance())

			c.gamepadInput(Enum.KeyCode.DPadDown)

			expect(GuiService.SelectedCoreObject).never.toBeNil()
			expect(GuiService.SelectedCoreObject).toBe(perfStatsToggle:getRbxInstance())
		end)

		it("should navigate back to basic settings page when 'B' button is pressed", function(c)
			local store = c.store

			expect(store:getState().menuPage).toBe("AdvancedGameSettings")

			c.gamepadInput(Enum.KeyCode.ButtonB)

			expect(store:getState().menuPage).toBe("GameSettings")
		end)

		it("should navigate back to basic settings page when back button is pressed", function(c)
			local store = c.store
			act(function()
				wait(0.2)
			end)

			expect(store:getState().menuPage).toBe("AdvancedGameSettings")

			c.gamepadInput(Enum.KeyCode.DPadUp)
			c.gamepadInput(Enum.KeyCode.ButtonA)

			expect(store:getState().menuPage).toBe("GameSettings")
		end)

		it("should toggle perf stats", function(c)
			act(function()
				wait(0.2)
			end)
			expect(UserGameSettings.PerformanceStatsVisible).toBe(false)

			c.gamepadInput(Enum.KeyCode.ButtonA)
			expect(UserGameSettings.PerformanceStatsVisible).toBe(true)

			c.gamepadInput(Enum.KeyCode.ButtonA)
			expect(UserGameSettings.PerformanceStatsVisible).toBe(false)
		end)

		it("should toggle micro profiler", function(c)
			act(function()
				wait(0.2)
			end)
			c.gamepadInput(Enum.KeyCode.DPadDown)
			expect(UserGameSettings.OnScreenProfilerEnabled).toBe(false)

			c.gamepadInput(Enum.KeyCode.ButtonA)
			expect(UserGameSettings.OnScreenProfilerEnabled).toBe(true)

			c.gamepadInput(Enum.KeyCode.ButtonA)
			expect(UserGameSettings.OnScreenProfilerEnabled).toBe(false)
		end)

		it("should open and close the dev console", function(c)
			local function signalDummyUser()
				-- The dev console waits for this event to be fired, so we need to
				-- simulate it being fired on dummy user data for it to finish initializing
				local NewPlayerCanManageDetails = RobloxReplicatedStorage:FindFirstChild("NewPlayerCanManageDetails")
				NewPlayerCanManageDetails:FireAllClients(12345678, true)
			end

			local store = c.store
			act(wait)

			expect(store:getState().isMenuOpen).toBe(true)
			expect(DevConsoleMaster:GetVisibility()).toBe(false)

			c.gamepadInput(Enum.KeyCode.DPadDown)
			c.gamepadInput(Enum.KeyCode.DPadDown)
			c.gamepadInput(Enum.KeyCode.ButtonA)

			signalDummyUser()
			act(function()
				VirtualInput.waitForInputEventsProcessed()
				wait()
			end)

			expect(store:getState().isMenuOpen).toBe(false)
			expect(DevConsoleMaster:GetVisibility()).toBe(true)

			c.gamepadInput(Enum.KeyCode.ButtonB)

			expect(store:getState().isMenuOpen).toBe(false)
			expect(DevConsoleMaster:GetVisibility()).toBe(false)
		end)

		it("should switch between the page and SideNavigation", function(c)
			local store = c.store

			act(function()
				wait(TestConstants.PageAnimationDuration) -- Wait for the page to finish animating in
			end)

			expect(store:getState().currentZone).toBe(1)

			act(function()
				c.gamepadInput(Enum.KeyCode.DPadLeft)
				VirtualInput.waitForInputEventsProcessed()
			end)
			expect(store:getState().currentZone).toBe(0)

			c.gamepadInput(Enum.KeyCode.DPadRight)
			expect(store:getState().currentZone).toBe(1)
		end)
	end)
end
