--!nonstrict
local CorePackages = game:GetService("CorePackages")
local GuiService = game:GetService("GuiService")
local Players = game:GetService("Players")
local RobloxReplicatedStorage = game:GetService("RobloxReplicatedStorage")
local Modules = game:GetService("CoreGui").RobloxGui.Modules

local UserGameSettings = UserSettings():GetService("UserGameSettings")
local DevConsoleMaster = require(Modules.DevConsoleMaster)
local act = require(CorePackages.Packages.Roact).act

local Rhodium = require(CorePackages.Packages.Dev.Rhodium)
local VirtualInput = Rhodium.VirtualInput
local Element = Rhodium.Element
local XPath = Rhodium.XPath

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

local c

beforeEach(function()
	c = {}
	GuiService.SelectedCoreObject = nil
	Players.LocalPlayer.PlayerGui:ClearAllChildren()
	local path, store, cleanup, gamepad = mountIGM() -- add arguments to this in mountIGM if needed
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
	c.gamepadInputForZone = function(input, expectedZone)
		local reachedExpectedZone = Instance.new("BindableEvent")
		local didReachExpectedZone = store:getState().currentZone == expectedZone
		local storeChangedConnection = store.changed:connect(function(state)
			if state.currentZone == expectedZone then
				didReachExpectedZone = true
				reachedExpectedZone:Fire()
			end
		end)

		act(function()
			gamepad:hitButton(input)
			VirtualInput.waitForInputEventsProcessed()
			if store:getState().currentZone ~= expectedZone then
				local timeoutActive = true
				task.delay(5, function()
					if timeoutActive then
						reachedExpectedZone:Fire()
					end
				end)
				reachedExpectedZone.Event:Wait()
				timeoutActive = false
			end
		end)

		storeChangedConnection:disconnect()
		reachedExpectedZone:Destroy()
		expect(didReachExpectedZone).toBe(true)
	end
	c.waitForPageAnimation = function()
		local rootPath = XPath.new(path)
		local pagePath = rootPath:cat(XPath.new("PageContainer.AdvancedGameSettings"))
		local page = Element.new(pagePath):getRbxInstance()
		expect(page).never.toBeNil()

		local reachedFinalPosition = Instance.new("BindableEvent")
		local didReachFinalPosition = page.Position == UDim2.new(0, 0, 0, 0)
		local positionChangedConnection = page:GetPropertyChangedSignal("Position"):Connect(function()
			if page.Position == UDim2.new(0, 0, 0, 0) then
				didReachFinalPosition = true
				reachedFinalPosition:Fire()
			end
		end)

		if not didReachFinalPosition then
			local timeoutActive = true
			task.delay(5, function()
				if timeoutActive then
					reachedFinalPosition:Fire()
				end
			end)
			reachedFinalPosition.Event:Wait()
			timeoutActive = false
		end

		positionChangedConnection:Disconnect()
		reachedFinalPosition:Destroy()
		expect(didReachFinalPosition).toBe(true)
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

afterEach(function()
	c.cleanup()
end)

describe("In-Game Menu Advanced Settings page focus management", function()
	it("should select the performance toggle ref by default", function()
		local path = XPath.new(c.path)
		local perfStatsTogglePath =
			path:cat(XPath.new("PageContainer.AdvancedGameSettings.Page.PageContainer.PerformanceStats.Toggle"))
		local perfStatsToggle = Element.new(perfStatsTogglePath)

		expect(GuiService.SelectedCoreObject).never.toBeNil()
		expect(GuiService.SelectedCoreObject).toBe(perfStatsToggle:getRbxInstance())
	end)

	it(
		"should select page back button when moving selection up and perf stats toggle when moving selection down",
		function()
			local path = XPath.new(c.path)
			act(function()
				wait(0.2)
			end)

			local perfStatsTogglePath =
				path:cat(XPath.new("PageContainer.AdvancedGameSettings.Page.PageContainer.PerformanceStats.Toggle"))
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
		end
	)

	it("should navigate back to basic settings page when 'B' button is pressed", function()
		local store = c.store

		expect(store:getState().menuPage).toBe("AdvancedGameSettings")

		c.gamepadInput(Enum.KeyCode.ButtonB)

		expect(store:getState().menuPage).toBe("GameSettings")
	end)

	it("should navigate back to basic settings page when back button is pressed", function()
		local store = c.store
		act(function()
			wait(0.2)
		end)

		expect(store:getState().menuPage).toBe("AdvancedGameSettings")

		c.gamepadInput(Enum.KeyCode.DPadUp)
		c.gamepadInput(Enum.KeyCode.ButtonA)

		expect(store:getState().menuPage).toBe("GameSettings")
	end)

	it("should toggle perf stats", function()
		act(function()
			wait(0.2)
		end)
		expect(UserGameSettings.PerformanceStatsVisible).toBe(false)

		c.gamepadInput(Enum.KeyCode.ButtonA)
		expect(UserGameSettings.PerformanceStatsVisible).toBe(true)

		c.gamepadInput(Enum.KeyCode.ButtonA)
		expect(UserGameSettings.PerformanceStatsVisible).toBe(false)
	end)

	it("should toggle micro profiler", function()
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

	it("should open and close the dev console", function()
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

	it("should switch between the page and SideNavigation", function()
		local store = c.store

		c.waitForPageAnimation()

		expect(store:getState().currentZone).toBe(1)

		c.gamepadInputForZone(Enum.KeyCode.DPadLeft, 0)
		expect(store:getState().currentZone).toBe(0)

		c.gamepadInputForZone(Enum.KeyCode.DPadRight, 1)
		expect(store:getState().currentZone).toBe(1)
	end)
end)
