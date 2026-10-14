--!nonstrict
local CorePackages = game:GetService("CorePackages")
local GuiService = game:GetService("GuiService")
local Players = game:GetService("Players")
local Modules = game:GetService("CoreGui").RobloxGui.Modules

local Rhodium = require(CorePackages.Packages.Dev.Rhodium)
local VirtualInput = Rhodium.VirtualInput
local Element = Rhodium.Element
local XPath = Rhodium.XPath
local act = require(CorePackages.Packages.Roact).act

local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local describe = JestGlobals.describe
local it = JestGlobals.it
local beforeEach = JestGlobals.beforeEach
local afterEach = JestGlobals.afterEach
local expect = JestGlobals.expect

local InGameMenu = Modules.InGameMenu
local SetCurrentPage = require(InGameMenu.Actions.SetCurrentPage)
local SetMenuOpen = require(InGameMenu.Actions.SetMenuOpen)
local Constants = require(InGameMenu.Resources.Constants)
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
	c.waitForPageReady = function()
		local rootPath = XPath.new(path)
		local pagePath = rootPath:cat(XPath.new("PageContainer.LeaveGamePrompt"))
		local page = Element.new(pagePath):waitForRbxInstance(1)
		expect(page).never.toBeNil()

		local reachedPageReady = Instance.new("BindableEvent")
		local didReachPageReady = false
		local updatePageReady = function()
			local selectedCoreObject = GuiService.SelectedCoreObject
			didReachPageReady = page.Position == UDim2.new(0, 0, 0, 0)
				and selectedCoreObject ~= nil
				and selectedCoreObject:IsDescendantOf(page)
			if didReachPageReady then
				reachedPageReady:Fire()
			end
		end

		local positionChangedConnection = page:GetPropertyChangedSignal("Position"):Connect(updatePageReady)
		local selectedCoreObjectChangedConnection = GuiService:GetPropertyChangedSignal("SelectedCoreObject")
			:Connect(function()
				updatePageReady()
			end)
		updatePageReady()

		if not didReachPageReady then
			local timeoutActive = true
			task.delay(5, function()
				if timeoutActive then
					reachedPageReady:Fire()
				end
			end)
			reachedPageReady.Event:Wait()
			timeoutActive = false
		end

		positionChangedConnection:Disconnect()
		selectedCoreObjectChangedConnection:Disconnect()
		reachedPageReady:Destroy()
		expect(didReachPageReady).toBe(true)
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

afterEach(function()
	c.cleanup()
end)

describe("In-Game Menu LeaveGamePrompt page focus management", function()
	it("should switch between the page and SideNavigation", function()
		local store = c.store

		c.waitForPageReady()

		expect(store:getState().currentZone).toBe(1)

		c.gamepadInputForZone(Enum.KeyCode.DPadLeft, 0)
		expect(store:getState().currentZone).toBe(0)

		c.gamepadInputForZone(Enum.KeyCode.DPadRight, 1)
		expect(store:getState().currentZone).toBe(1)
	end)
end)
