local TenFootUiShell = script:FindFirstAncestor("TenFootUiShell")
local Packages = TenFootUiShell.Parent
local React = require(Packages.React)
local JestGlobals = require(Packages.Dev.JestGlobals)
local it = JestGlobals.it
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
local ReactFocusNavigation = require(Packages.ReactFocusNavigation)
local FocusNavigationService = ReactFocusNavigation.FocusNavigationService
local CoreGuiInterface = ReactFocusNavigation.EngineInterface.CoreGui
local useRootFocusNavigationBindings = require(script.Parent.useRootFocusNavigationBindings)
local TestUtils = require(Packages.Dev.TestUtils)
local waitForEvents = TestUtils.DeferredLuaHelpers.waitForEvents

local createTenFootUiShellTestHarness = require(TenFootUiShell.TestUtils.createTenFootUiShellTestHarness)

local HookRenderer = React.forwardRef(function(props, outerRef)
	local innerRef = useRootFocusNavigationBindings(outerRef)
	return React.createElement("Frame", { ref = innerRef }, React.createElement("TextButton", { Text = "test" }))
end)

local mockAppPage = {
	Home = "Home",
	Games = "Games",
	Avatar = "Avatar",
}

local mockGlobalNavConfig = {
	tabs = {
		{
			titleLocalizationKey = "CommonUI.Features.Label.Home",
			page = mockAppPage.Home,
			icon = "icons/menu/home_on",
			actionType = Enum.AppShellActionType.TapHomePageTab,
		},
		{
			titleLocalizationKey = "CommonUI.Features.Label.Discover",
			page = mockAppPage.Games,
			icon = "icons/menu/home_on",
			actionType = Enum.AppShellActionType.TapGamePageTab,
		},
		{
			titleLocalizationKey = "CommonUI.Features.Label.Avatar",
			page = mockAppPage.Avatar,
			icon = "icons/menu/home_on",
			actionType = Enum.AppShellActionType.TapAvatarTab,
		},
	},
	options = {},
}

local mockRoutes = {
	{ key = "Home", routeName = mockAppPage.Home },
	{ key = "Games", routeName = mockAppPage.Games },
	{ key = "Avatar", routeName = mockAppPage.Avatar },
}

describe("useRootFocusNavigationBindings", function()
	local focusNavigationService
	beforeEach(function()
		focusNavigationService = FocusNavigationService.new(CoreGuiInterface)
	end)

	afterEach(function()
		focusNavigationService:focusGuiObject(nil)
		focusNavigationService:teardown()
		cleanup()
	end)

	it("should update a passed in binding", function()
		local ref = React.createRef()
		local TestHarness = createTenFootUiShellTestHarness(HookRenderer)
		render(React.createElement(TestHarness, { ref = ref }))
		expect(ref.current).toBeDefined()
	end)

	it("should map buttons to event handlers with types", function()
		local TestHarness = createTenFootUiShellTestHarness(HookRenderer, focusNavigationService)
		local renderResult = render(React.createElement(TestHarness))
		local element = renderResult.getByText("test")
		act(function()
			focusNavigationService:focusGuiObject(element)
			waitForEvents()
		end)
		expect(focusNavigationService.activeEventMap:getValue()).toEqual({
			[Enum.KeyCode.ButtonL1] = "TabBackward",
			[Enum.KeyCode.ButtonR1] = "TabForward",
			[Enum.KeyCode.ButtonY] = "Search",
		})
	end)
	for _, args in
		{
			{ index = 1 },
			{ index = 2, route = mockAppPage.Home },
			{ index = 3, route = mockAppPage.Games },
		} :: { { index: number, route: string? } }
	do
		it("should call navigate the left tab functionality", function()
			local TestHarness, nestedMocks = createTenFootUiShellTestHarness(HookRenderer, focusNavigationService, {
				globalNavConfig = mockGlobalNavConfig,
				navigationState = {
					routes = mockRoutes,
					index = args.index,
					key = "test",
				},
			})
			local renderResult = render(React.createElement(TestHarness))
			local element = renderResult.getByText("test")
			act(function()
				focusNavigationService:focusGuiObject(element)
			end)
			local gamepad = GamePad.new()
			act(function()
				waitForEvents()
				gamepad:hitButton(Enum.KeyCode.ButtonL1)
				task.wait(1)
			end)
			if args.route then
				expect(nestedMocks.mockNavigation.navigate).toHaveBeenCalledWith(args.route)
			else
				expect(nestedMocks.mockNavigation.navigate).never.toHaveBeenCalled()
			end
		end)
	end
	for _, args in
		{
			{ index = 1, route = mockAppPage.Games },
			{ index = 2, route = mockAppPage.Avatar },
			{ index = 3 },
		} :: { { index: number, route: string? } }
	do
		it("should bind the right tab functionality", function()
			local TestHarness, nestedMocks = createTenFootUiShellTestHarness(HookRenderer, focusNavigationService, {
				globalNavConfig = mockGlobalNavConfig,
				navigationState = {
					routes = mockRoutes,
					index = args.index,
					key = "test",
				},
			})
			local renderResult = render(React.createElement(TestHarness))
			local element = renderResult.getByText("test")
			act(function()
				focusNavigationService:focusGuiObject(element)
			end)
			local gamepad = GamePad.new()
			act(function()
				waitForEvents()
				gamepad:hitButton(Enum.KeyCode.ButtonR1)
				task.wait(1)
			end)
			if args.route then
				expect(nestedMocks.mockNavigation.navigate).toHaveBeenCalledWith(args.route)
			else
				expect(nestedMocks.mockNavigation.navigate).never.toHaveBeenCalled()
			end
		end)
	end
	it("should bind the search shortcut", function()
		local TestHarness, nestedMocks = createTenFootUiShellTestHarness(HookRenderer, focusNavigationService)
		local renderResult = render(React.createElement(TestHarness))
		local element = renderResult.getByText("test")
		act(function()
			focusNavigationService:focusGuiObject(element)
		end)
		local gamepad = GamePad.new()
		act(function()
			waitForEvents()
			gamepad:hitButton(Enum.KeyCode.ButtonY)
			task.wait(1)
		end)
		expect(nestedMocks.mockNavigation.navigate).toHaveBeenCalled()
	end)
end)
