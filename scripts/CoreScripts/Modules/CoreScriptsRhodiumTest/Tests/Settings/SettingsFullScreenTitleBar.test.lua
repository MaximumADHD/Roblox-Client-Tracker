--!nonstrict
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")

local Rhodium = require(CorePackages.Packages.Dev.Rhodium)
local Element = Rhodium.Element
local VirtualInput = Rhodium.VirtualInput

local Modules = CoreGui.RobloxGui.Modules
local act = require(CorePackages.Packages.Roact).act
local Promise = require(CorePackages.Packages.Promise)
local AnimationStepSignal = require(CorePackages.Packages.Otter).__devAnimationStepSignal
local waitForEvents = require(CorePackages.Workspace.Packages.TestUtils).DeferredLuaHelpers.waitForEvents

local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local describe = JestGlobals.describe
local it = JestGlobals.it
local expect = JestGlobals.expect
local jest = JestGlobals.jest
local beforeEach = JestGlobals.beforeEach
local afterEach = JestGlobals.afterEach

local GetFIntFullscreenTitleBarTriggerDelayMillis =
	require(Modules.InGameMenu.Flags.GetFIntFullscreenTitleBarTriggerDelayMillis)

local SettingsFullScreenTitleBar = require(Modules.Settings.Components.SettingsFullScreenTitleBar)

local TITLE_BAR_OFF_POS = UDim2.new(0, 0, 0, -88)
local TITLE_BAR_ON_POS = UDim2.fromOffset(0, 0)
local OUTSIDE_OF_TITLE_BAR_POSITION = Vector2.new(100, 500)
local TRIGGER_DELAY = 0.1

-- The bar shows and hides on Promise.delay timers and animates on an Otter spring. Both run on a
-- clock that the test advances: Promise reads its time and its tick event from hooks that the
-- library exposes, and Otter steps on its mock animation signal.
local FRAME = 1 / 60
local fakeNow = 0
local timeCallbacks = {}
local mockTimeEvent = {
	Connect = function(_, callback)
		timeCallbacks[callback] = true
		return {
			Disconnect = function()
				timeCallbacks[callback] = nil
			end,
		}
	end,
}
local originalGetTime = Promise._getTime
local originalTimeEvent = Promise._timeEvent

local function advance(seconds: number)
	for _ = 1, math.max(1, math.ceil(seconds / FRAME)) do
		act(function()
			fakeNow += FRAME
			for callback in table.clone(timeCallbacks) do
				callback()
			end
			AnimationStepSignal:Fire(FRAME)
		end)
	end
end

local function moveMouse(position: Vector2)
	act(function()
		VirtualInput.Mouse.mouseMove(position)
		VirtualInput.waitForInputEventsProcessed()
	end)
	waitForEvents.act()
end

local c

describe("SettingsFullScreenTitleBar", function()
	beforeEach(function()
		c = {}
		c.triggerDelay = game:SetFastIntForTesting("FullscreenTitleBarTriggerDelayMillis", TRIGGER_DELAY * 1000)
		fakeNow = 0
		table.clear(timeCallbacks)
		Promise._getTime = function()
			return fakeNow
		end
		Promise._timeEvent = mockTimeEvent :: any
		_G.__OTTER_MOCK_ANIMATION_STEP_SIGNAL__ = true
	end)

	afterEach(function()
		game:SetFastIntForTesting("FullscreenTitleBarTriggerDelayMillis", c.triggerDelay)
		Promise._getTime = originalGetTime
		Promise._timeEvent = originalTimeEvent
		_G.__OTTER_MOCK_ANIMATION_STEP_SIGNAL__ = nil
	end)

	it("should create and destroy without errors", function()
		local tree = SettingsFullScreenTitleBar.mount()
		SettingsFullScreenTitleBar.unmount(tree)
	end)

	it("should be a child ScreenGui of CoreGui", function()
		local tree = SettingsFullScreenTitleBar.mount()

		local instance = CoreGui:FindFirstChild("InGameFullscreenTitleBarScreen")
		expect(instance).never.toBeNil()
		expect(instance.ClassName).toBe("ScreenGui")

		SettingsFullScreenTitleBar.unmount(tree)
	end)

	-- Stay longer than the trigger delay, then play the bar animation to its end.
	local function advancePastTriggerAndAnimation()
		advance(TRIGGER_DELAY + 2)
	end

	it("should be triggered/hidden on mouse in/out after delay", function()
		local tree = SettingsFullScreenTitleBar.mount({
			_mockFullScreen = true,
		}, game.CoreGui, "SettingsFullScreenTitleBar")

		local triggerArea = Element.new("game.CoreGui.InGameFullscreenTitleBarScreen.TriggerArea")
		local triggerAreaInstance = triggerArea:waitForRbxInstance()
		expect(triggerAreaInstance).never.toBeNil()
		local bar = Element.new("game.CoreGui.InGameFullscreenTitleBarScreen.Bar")
		local barInstance = bar:waitForRbxInstance()
		expect(barInstance).never.toBeNil()

		expect(barInstance.Position).toBe(TITLE_BAR_OFF_POS)

		moveMouse(triggerArea:getCenter())
		advancePastTriggerAndAnimation()
		expect(barInstance.Position).toBe(TITLE_BAR_ON_POS)

		moveMouse(bar:getCenter())
		advancePastTriggerAndAnimation()
		expect(barInstance.Position).toBe(TITLE_BAR_ON_POS)

		moveMouse(OUTSIDE_OF_TITLE_BAR_POSITION)
		advancePastTriggerAndAnimation()
		expect(barInstance.Position).toBe(TITLE_BAR_OFF_POS)

		SettingsFullScreenTitleBar.unmount(tree)
	end)

	it("should trigger the close action on button click", function()
		local clicked = 0
		local mockFn = jest.fn()
		local tree = SettingsFullScreenTitleBar.mount({
			_mockFullScreen = true,
			onClose = mockFn,
		})

		local triggerArea = Element.new("game.CoreGui.InGameFullscreenTitleBarScreen.TriggerArea")
		expect(triggerArea:waitForRbxInstance()).never.toBeNil()
		local barInstance = Element.new("game.CoreGui.InGameFullscreenTitleBarScreen.Bar"):waitForRbxInstance()
		expect(barInstance).never.toBeNil()
		local closeButtonInstance = barInstance:FindFirstChild("CloseButton", true)
		expect(closeButtonInstance).never.toBeNil()

		expect(barInstance.Position).toBe(TITLE_BAR_OFF_POS)

		moveMouse(triggerArea:getCenter())
		advancePastTriggerAndAnimation()
		expect(barInstance.Position).toBe(TITLE_BAR_ON_POS)

		act(function()
			Element.new(closeButtonInstance):click()
		end)
		waitForEvents.act()
		expect(mockFn).toHaveBeenCalledTimes(1)

		SettingsFullScreenTitleBar.unmount(tree)
	end)
end)
