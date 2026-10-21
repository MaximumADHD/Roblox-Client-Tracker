--!nonstrict
local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")

local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local it = JestGlobals.it
local expect = JestGlobals.expect

local InGameMenuDependencies = require(CorePackages.Packages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local RoactRodux = InGameMenuDependencies.RoactRodux
local Rodux = InGameMenuDependencies.Rodux
local UnitTestHelpers = require(CorePackages.Workspace.Packages.UnitTestHelpers)

local InGameMenu = script.Parent.Parent
local reducer = require(InGameMenu.reducer)
local InGameMenuPolicy = require(InGameMenu.InGameMenuPolicy)
local Rhodium = require(CorePackages.Packages.Dev.Rhodium)
local Element = Rhodium.Element
local VirtualInput = Rhodium.VirtualInput
local withInt = require(InGameMenu.TestHelpers.withInt)

local act = Roact.act

local TestUtils = require(CorePackages.Workspace.Packages.TestUtils)
local DeferredLuaHelpers = TestUtils.DeferredLuaHelpers
local waitUntil = TestUtils.waitUntil
local waitForEvents = DeferredLuaHelpers.waitForEvents
local MockUserGameSettings = require(InGameMenu.Mocks.MockUserGameSettings)
local GetFFlagFullscreenTitleBarInjectGameServices =
	require(InGameMenu.Flags.GetFFlagFullscreenTitleBarInjectGameServices)

local TITLE_BAR_OFF_POS = UDim2.new(0, 0, 0, -88)
local TITLE_BAR_ON_POS = UDim2.fromOffset(0, 0)
local OUTSIDE_OF_TITLE_BAR_POSITION = Vector2.new(100, 500)
local OUTSIDE_OF_TRIGGER_INSIDE_OF_TITLE_BAR__POSITION = Vector2.new(2, 2)
-- Seconds. Covers the trigger delay, the disappear delay, and the bar animation.
local BAR_ANIMATION_TIMEOUT = 5
local TRIGGER_DELAY_MILLIS = 400

local function withControlledPromiseDelay(callback)
	local Promise = InGameMenuDependencies.Promise
	local originalDelay = Promise.delay
	local pendingDelays = {}
	Promise.delay = function(seconds)
		local pendingDelay = { seconds = seconds, cancelled = false }
		pendingDelay.promise = Promise.new(function(resolve, _, onCancel)
			pendingDelay.resolve = resolve
			onCancel(function()
				pendingDelay.cancelled = true
			end)
		end)
		table.insert(pendingDelays, pendingDelay)
		return pendingDelay.promise
	end

	local function takeDelays(seconds)
		local taken = {}
		for index = #pendingDelays, 1, -1 do
			if pendingDelays[index].seconds == seconds then
				table.insert(taken, 1, table.remove(pendingDelays, index))
			end
		end
		return taken
	end

	local success, message = pcall(callback, takeDelays)
	Promise.delay = originalDelay
	if not success then
		error(message)
	end
end

local mockPolicyMapper = function(policy)
	return {
		enableEducationalPopup = function()
			return false
		end,
		educationalPopupMaxDisplayCount = function()
			return 0
		end,
	}
end

local FullscreenTitleBar = require(script.Parent.FullscreenTitleBar)
local mockUserGameSettings = MockUserGameSettings.new()

local mockProps = {
	titleText = "Roblox",
	displayOrder = 1,
	isMenuOpen = true,
	isEducationalPopupEnabled = true,
	maxDisplayCount = 1,
	openEducationalPopup = function() end,
	startLeavingGame = function() end,
	userGameSettings = mockUserGameSettings,
}

it("should create and destroy without errors", function()
	local element = Roact.createElement(RoactRodux.StoreProvider, {
		store = Rodux.Store.new(reducer),
	}, {
		PolicyProvider = Roact.createElement(InGameMenuPolicy.Provider, {
			policy = { mockPolicyMapper },
		}, {
			ThemeProvider = UnitTestHelpers.createStyleProvider({
				FullscreenTitleBar = Roact.createElement(FullscreenTitleBar, mockProps),
			}),
		}),
	})

	local handle = Roact.mount(element)
	Roact.unmount(handle)
end)

it("should be a child ScreenGui of CoreGui", function()
	local element = Roact.createElement(RoactRodux.StoreProvider, {
		store = Rodux.Store.new(reducer),
	}, {
		PolicyProvider = Roact.createElement(InGameMenuPolicy.Provider, {
			policy = { mockPolicyMapper },
		}, {
			ThemeProvider = UnitTestHelpers.createStyleProvider({
				FullscreenTitleBar = Roact.createElement(FullscreenTitleBar, mockProps),
			}),
		}),
	})

	local handle = Roact.mount(element)
	local instance = CoreGui:FindFirstChild("InGameFullscreenTitleBarScreen")
	expect(instance).toMatchInstance({ ClassName = "ScreenGui" })
	Roact.unmount(handle)
end)

if GetFFlagFullscreenTitleBarInjectGameServices() then
	it("should be triggered when mouse moved on top", function()
		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = Rodux.Store.new(reducer),
		}, {
			PolicyProvider = Roact.createElement(InGameMenuPolicy.Provider, {
				policy = { mockPolicyMapper },
			}, {
				ThemeProvider = UnitTestHelpers.createStyleProvider({
					FullscreenTitleBar = Roact.createElement(FullscreenTitleBar, mockProps),
				}),
			}),
		})

		local handle = Roact.mount(element)
		act(function()
			mockUserGameSettings.FullscreenChanged:GoFullscreen()
			waitForEvents()
		end)

		local triggerArea = Element.new("game.CoreGui.InGameFullscreenTitleBarScreen.TriggerArea")
		local triggerAreaInstance = triggerArea:waitForRbxInstance()
		expect(triggerAreaInstance).never.toBeNil()
		local barInstance = Element.new("game.CoreGui.InGameFullscreenTitleBarScreen.Bar"):waitForRbxInstance()
		expect(barInstance).toMatchInstance({ Position = TITLE_BAR_OFF_POS })

		act(function()
			VirtualInput.Mouse.mouseMove(triggerArea:getAnchor())
		end)
		act(function()
			VirtualInput.waitForInputEventsProcessed()
		end)

		waitUntil(function()
			return barInstance.Position == TITLE_BAR_ON_POS
		end, BAR_ANIMATION_TIMEOUT)
		expect(barInstance.Position).toBe(TITLE_BAR_ON_POS)

		Roact.unmount(handle)
	end)

	it("should hide the bar when mouse moved out of the title bar", function()
		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = Rodux.Store.new(reducer),
		}, {
			PolicyProvider = Roact.createElement(InGameMenuPolicy.Provider, {
				policy = { mockPolicyMapper },
			}, {
				ThemeProvider = UnitTestHelpers.createStyleProvider({
					FullscreenTitleBar = Roact.createElement(FullscreenTitleBar, mockProps),
				}),
			}),
		})

		local handle = Roact.mount(element)
		act(function()
			mockUserGameSettings.FullscreenChanged:GoFullscreen()
			waitForEvents()
		end)

		local triggerArea = Element.new("game.CoreGui.InGameFullscreenTitleBarScreen.TriggerArea")
		local triggerAreaInstance = triggerArea:waitForRbxInstance()
		expect(triggerAreaInstance).never.toBeNil()
		local barInstance = Element.new("game.CoreGui.InGameFullscreenTitleBarScreen.Bar"):waitForRbxInstance()
		expect(barInstance).toMatchInstance({ Position = TITLE_BAR_OFF_POS })

		act(function()
			VirtualInput.Mouse.mouseMove(triggerArea:getAnchor())
		end)
		act(function()
			VirtualInput.waitForInputEventsProcessed()
		end)

		waitUntil(function()
			return barInstance.Position == TITLE_BAR_ON_POS
		end, BAR_ANIMATION_TIMEOUT)
		expect(barInstance.Position).toBe(TITLE_BAR_ON_POS)

		act(function()
			-- Re-move the mouse, so that the MouseEnter event can fire on the title bar frame.
			VirtualInput.Mouse.mouseMove(triggerArea:getAnchor())
		end)
		act(function()
			VirtualInput.waitForInputEventsProcessed()
		end)
		act(function()
			VirtualInput.Mouse.mouseMove(OUTSIDE_OF_TITLE_BAR_POSITION)
		end)
		act(function()
			VirtualInput.waitForInputEventsProcessed()
		end)

		waitUntil(function()
			return barInstance.Position == TITLE_BAR_OFF_POS
		end, BAR_ANIMATION_TIMEOUT)
		expect(barInstance.Position).toBe(TITLE_BAR_OFF_POS)
		Roact.unmount(handle)
	end)

	it("should cancel triggering title bar when mouse moved out of the trigger area within the delay", function()
		withInt("FullscreenTitleBarTriggerDelayMillis", TRIGGER_DELAY_MILLIS, function()
			withControlledPromiseDelay(function(takeDelays)
				local triggerDelaySeconds = TRIGGER_DELAY_MILLIS / 1000
				local element = Roact.createElement(RoactRodux.StoreProvider, {
					store = Rodux.Store.new(reducer),
				}, {
					PolicyProvider = Roact.createElement(InGameMenuPolicy.Provider, {
						policy = { mockPolicyMapper },
					}, {
						ThemeProvider = UnitTestHelpers.createStyleProvider({
							FullscreenTitleBar = Roact.createElement(FullscreenTitleBar, mockProps),
						}),
					}),
				})

				local handle = Roact.mount(element)
				act(function()
					mockUserGameSettings.FullscreenChanged:GoFullscreen()
					waitForEvents()
				end)

				local triggerArea = Element.new("game.CoreGui.InGameFullscreenTitleBarScreen.TriggerArea")
				local triggerAreaInstance = triggerArea:waitForRbxInstance()
				expect(triggerAreaInstance).never.toBeNil()
				local barInstance = Element.new("game.CoreGui.InGameFullscreenTitleBarScreen.Bar"):waitForRbxInstance()
				expect(barInstance).toMatchInstance({ Position = TITLE_BAR_OFF_POS })

				act(function()
					VirtualInput.Mouse.mouseMove(triggerArea:getAnchor())
				end)
				act(function()
					VirtualInput.waitForInputEventsProcessed()
				end)
				act(function()
					VirtualInput.Mouse.mouseMove(OUTSIDE_OF_TRIGGER_INSIDE_OF_TITLE_BAR__POSITION)
				end)
				act(function()
					VirtualInput.waitForInputEventsProcessed()
				end)

				local cancelledDelays = takeDelays(triggerDelaySeconds)
				expect(#cancelledDelays).toBe(1)
				expect(cancelledDelays[1].cancelled).toBe(true)
				act(function()
					cancelledDelays[1].resolve()
					waitForEvents()
				end)
				expect(barInstance.Position).toBe(TITLE_BAR_OFF_POS)

				act(function()
					VirtualInput.Mouse.mouseMove(OUTSIDE_OF_TITLE_BAR_POSITION)
				end)
				act(function()
					VirtualInput.waitForInputEventsProcessed()
				end)
				act(function()
					VirtualInput.Mouse.mouseMove(triggerArea:getAnchor())
				end)
				act(function()
					VirtualInput.waitForInputEventsProcessed()
				end)

				local elapsedDelays = takeDelays(triggerDelaySeconds)
				expect(#elapsedDelays).toBe(1)
				expect(elapsedDelays[1].cancelled).toBe(false)
				act(function()
					elapsedDelays[1].resolve()
					waitForEvents()
				end)
				act(function()
					VirtualInput.Mouse.mouseMove(OUTSIDE_OF_TRIGGER_INSIDE_OF_TITLE_BAR__POSITION)
				end)
				act(function()
					VirtualInput.waitForInputEventsProcessed()
				end)

				waitUntil(function()
					return barInstance.Position == TITLE_BAR_ON_POS
				end, BAR_ANIMATION_TIMEOUT)
				expect(barInstance.Position).toBe(TITLE_BAR_ON_POS)

				Roact.unmount(handle)
			end)
		end)
	end)
end
