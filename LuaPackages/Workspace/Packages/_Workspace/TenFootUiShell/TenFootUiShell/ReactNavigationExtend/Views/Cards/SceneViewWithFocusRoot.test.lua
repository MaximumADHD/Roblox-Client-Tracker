local TenFootUiShell = script:FindFirstAncestor("TenFootUiShell")
local Packages = TenFootUiShell.Parent
local React = require(Packages.React)
local JestGlobals = require(Packages.Dev.JestGlobals)
local it = JestGlobals.it
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local jest = JestGlobals.jest
local ReactTestingLibrary = require(Packages.Dev.ReactTestingLibrary)
local render = ReactTestingLibrary.render
local FocusNavigableSurfaceIdentifierEnum = require(TenFootUiShell.Types.FocusNavigableSurfaceIdentifierEnum)
local FocusNavigableSurfaceRegistryContext = require(TenFootUiShell.Hooks.FocusNavigableSurfaceRegistry).registryContext
local createTenFootUiShellTestHarness = require(TenFootUiShell.TestUtils.createTenFootUiShellTestHarness)
local mocks = require(Packages.Dev.TenFootUiTesting).TestHelpers.mocks
local TenFootUiCommon = require(Packages.TenFootUiCommon)
local ScreenKind = TenFootUiCommon.TenFootUiRNTypes.ScreenKind
local SceneViewWithFocusRoot = require(script.Parent.SceneViewWithFocusRoot)

local function TestComponent()
	return React.createElement("Frame", {}, React.createElement("TextButton", { Text = "Test" }))
end

describe("SceneViewWithFocusRoot", function()
	it("should register itself with the focus navigation registry if it is focusable and visible", function()
		local mockDispatch = jest.fn()
		local testDescriptor = mocks.makeMockDescriptor("testKey", {
			index = 1,
			key = "test",
			routes = {},
		}, ScreenKind.Default)
		local TestHarness = createTenFootUiShellTestHarness(nil, {})
		render(
			React.createElement(
				TestHarness,
				nil,
				React.createElement(
					FocusNavigableSurfaceRegistryContext.Provider,
					{
						value = { state = {}, dispatch = mockDispatch },
					},
					React.createElement(SceneViewWithFocusRoot, {
						component = TestComponent :: any,
						navigation = testDescriptor.navigation,
						screenProps = {},
						isFocusable = true,
					})
				)
			)
		)
		expect(mockDispatch).toHaveBeenCalledWith(expect.objectContaining({
			type = "registered",
			payload = {
				name = FocusNavigableSurfaceIdentifierEnum.RouterView,
				guiObject = expect.anything(),
			},
		}))
	end)

	it("should not register itself with the focus navigation registry if the screen is not focusable", function()
		local mockDispatch = jest.fn()
		local testDescriptor = mocks.makeMockDescriptor("testKey", {
			index = 1,
			key = "test",
			routes = {},
		}, ScreenKind.Default)
		local TestHarness = createTenFootUiShellTestHarness(nil, {})
		render(
			React.createElement(
				TestHarness,
				nil,
				React.createElement(
					FocusNavigableSurfaceRegistryContext.Provider,
					{
						value = { state = {}, dispatch = mockDispatch },
					},
					React.createElement(SceneViewWithFocusRoot, {
						component = TestComponent :: any,
						navigation = testDescriptor.navigation,
						screenProps = {},
						isFocusable = false,
					})
				)
			)
		)
		expect(mockDispatch).never.toHaveBeenCalled()
	end)
end)
