local CoreGui = game:GetService("CoreGui")
local TenFootUiShell = script:FindFirstAncestor("TenFootUiShell")
local Packages = TenFootUiShell.Parent
local React = require(Packages.React)
local JestGlobals = require(Packages.Dev.JestGlobals)
local it = JestGlobals.it
local jest = JestGlobals.jest
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local beforeEach = JestGlobals.beforeEach
local afterEach = JestGlobals.afterEach
local ReactTestingLibrary = require(Packages.Dev.ReactTestingLibrary)
local act = ReactTestingLibrary.act
local cleanup = ReactTestingLibrary.cleanup
local render = ReactTestingLibrary.render
local Rhodium = require(Packages.Dev.Rhodium)
local GamePad = Rhodium.VirtualInput.GamePad
local Mouse = Rhodium.VirtualInput.Mouse
local ReactFocusNavigation = require(Packages.ReactFocusNavigation)
local FocusNavigationService = ReactFocusNavigation.FocusNavigationService
local CoreGuiInterface = ReactFocusNavigation.EngineInterface.CoreGui
local TestUtils = require(Packages.Dev.TestUtils)
local waitForEvents = TestUtils.DeferredLuaHelpers.waitForEvents
local useGlobalFocusHandler = require(script.Parent.useGlobalFocusHandler)
local FocusNavigableSurfaceIdentifierEnum = require(TenFootUiShell.Types.FocusNavigableSurfaceIdentifierEnum)
local FocusNavigableSurfaceRegistryContext = require(TenFootUiShell.Hooks.FocusNavigableSurfaceRegistry).registryContext

local createTenFootUiShellTestHarness = require(TenFootUiShell.TestUtils.createTenFootUiShellTestHarness)

type FocusNavigationService = ReactFocusNavigation.FocusNavigationService

local function HookRenderer()
	useGlobalFocusHandler()
	return React.createElement("Frame")
end

local function createGlobalFocusHandlerTestHarness(
	routerView: Instance?,
	globalNav: Instance?,
	focusNavigationService: FocusNavigationService?
)
	local TestHarness = createTenFootUiShellTestHarness(focusNavigationService)

	return function(props)
		return React.createElement(
			TestHarness,
			nil,
			React.createElement(FocusNavigableSurfaceRegistryContext.Provider, {
				value = {
					state = {
						[FocusNavigableSurfaceIdentifierEnum.RouterView] = routerView,
						[FocusNavigableSurfaceIdentifierEnum.NavBar] = globalNav,
					} :: { [string]: Instance? },
					dispatch = function() end,
				},
			}, props.children)
		)
	end
end

describe("useGlobalFocusHandler when there is a focusNavigationService", function()
	local focusNavigationService
	beforeEach(function()
		focusNavigationService = FocusNavigationService.new(CoreGuiInterface)
	end)

	afterEach(function()
		focusNavigationService:focusGuiObject(nil)
		focusNavigationService:teardown()
		cleanup()
	end)
	describe("when we have a RouterView and a GlobalNav in the FocusNavigableSurfaceRegistry", function()
		local routerView
		local globalNav
		beforeEach(function()
			routerView = Instance.new("Frame")
			routerView.Parent = CoreGui
			globalNav = Instance.new("Frame")
			globalNav.Parent = CoreGui
		end)

		it("should attempt to focus the routerView and the globalNav in turn if it can't achieve focus", function()
			routerView.Name = "routerView"
			globalNav.Name = "globalNav"
			focusNavigationService.focusGuiObject = jest.fn()
			local TestHarness = createGlobalFocusHandlerTestHarness(routerView, globalNav, focusNavigationService)
			render(React.createElement(HookRenderer), { wrapper = TestHarness })
			local gamepad = GamePad.new()
			act(function()
				waitForEvents()
				gamepad:hitButton(Enum.KeyCode.ButtonX)
				task.wait(1)
			end)
			expect(focusNavigationService.focusGuiObject).toHaveBeenCalledWith(
				focusNavigationService,
				expect.objectContaining({ Name = "routerView" }),
				false
			)
			expect(focusNavigationService.focusGuiObject).toHaveBeenCalledWith(
				focusNavigationService,
				expect.objectContaining({ Name = "globalNav" }),
				false
			)
		end)

		it("should attempt to focus if our last input is a gamepad and we have lost focus", function()
			routerView.Name = "routerView"
			globalNav.Name = "globalNav"
			local TestHarness = createGlobalFocusHandlerTestHarness(routerView, globalNav, focusNavigationService)
			render(React.createElement(HookRenderer), { wrapper = TestHarness })
			act(function()
				waitForEvents()
				focusNavigationService:focusGuiObject(nil)
			end)
			focusNavigationService.focusGuiObject = jest.fn()
			local gamepad = GamePad.new()
			act(function()
				waitForEvents()
				gamepad:hitButton(Enum.KeyCode.ButtonX)
				task.wait(1)
			end)

			expect(focusNavigationService.focusGuiObject).toHaveBeenCalledWith(
				focusNavigationService,
				expect.objectContaining({ Name = "routerView" }),
				false
			)
		end)

		it("should not attempt to focus if our last input is not a gamepad and we have lost focus", function()
			routerView.Name = "routerView"
			globalNav.Name = "globalNav"
			local TestHarness = createGlobalFocusHandlerTestHarness(routerView, globalNav, focusNavigationService)
			render(React.createElement(HookRenderer), { wrapper = TestHarness })
			act(function()
				waitForEvents()
				focusNavigationService:focusGuiObject(nil)
			end)
			focusNavigationService.focusGuiObject = jest.fn()
			act(function()
				waitForEvents()
				Mouse.click(Vector2.new(0, 0))
				task.wait(1)
			end)

			expect(focusNavigationService.focusGuiObject).never.toHaveBeenCalledWith()
		end)
	end)
end)
