local root = script:FindFirstAncestor("TenFootUiControllerBar")
local Packages = root.Parent
local React = require(Packages.React)
local ReactFocusNavigation = require(Packages.ReactFocusNavigation)
local ControllerBarContainer = require(script.Parent.ControllerBarContainer)
local ReactTestingLibrary = require(Packages.Dev.ReactTestingLibrary)
local JestGlobals = require(Packages.Dev.JestGlobals)
local UnitTestHelpers = require(Packages.Dev.UnitTestHelpers)
local TenFootUiEventNameEnum = require(Packages.TenFootUiCommon).TenFootUiEventNameEnum
local createFocusNavigationWrapper = require(root.TestUtils).createFocusNavigationWrapper
local FocusNavigationService = ReactFocusNavigation.FocusNavigationService
local CoreGuiInterface = ReactFocusNavigation.EngineInterface.CoreGui
local UIBlox = require(Packages.UIBlox)
local Images = UIBlox.App.ImageSet.Images
local mockStyle = UnitTestHelpers.mockStyle
local render = ReactTestingLibrary.render
local act = ReactTestingLibrary.act
local cleanup = ReactTestingLibrary.cleanup
local expect = JestGlobals.expect
local describe = JestGlobals.describe
local it = JestGlobals.it
local beforeEach = JestGlobals.beforeEach
local afterEach = JestGlobals.afterEach

describe("ControllerBar", function()
	local focusNavigation
	beforeEach(function()
		focusNavigation = FocusNavigationService.new(CoreGuiInterface)
	end)
	afterEach(function()
		focusNavigation:focusGuiObject(nil)
		focusNavigation:teardown()
		cleanup()
	end)
	it("should pass through items to be displayed if items are available", function()
		local expected = {
			{
				icon = Images["icons/controls/keys/xboxY"],
				text = "Localized:CommonUI.Features.Label.ControllerBar.Search",
			},
		}

		local eventMap = {
			[Enum.KeyCode.ButtonY] = TenFootUiEventNameEnum.Search :: string,
		}

		local eventHandlerMap = {
			[TenFootUiEventNameEnum.Search :: string] = { handler = function(_e: any) end },
		}

		local function TestComponent()
			return React.createElement(
				"Frame",
				nil,
				React.createElement("TextButton", { Text = "test" }),
				React.createElement(ControllerBarContainer)
			)
		end

		local renderResult = render(mockStyle(React.createElement(TestComponent)), {
			wrapper = createFocusNavigationWrapper({
				focusNavigation = focusNavigation,
				eventMap = eventMap,
				eventHandlerMap = eventHandlerMap,
			}),
		})

		local instance = renderResult.getByText("test")
		act(function()
			focusNavigation:focusGuiObject(instance)
		end)

		for _, item in ipairs(expected) do
			expect(renderResult.getByText(item.text)).toBeDefined()
		end
	end)
	it("should not be displayed if there are no items", function()
		local expected = {
			{
				icon = Images["icons/controls/keys/xboxY"],
				text = "Localized:CommonUI.Features.Label.ControllerBar.Search",
			},
		}

		local eventMap = {
			[Enum.KeyCode.ButtonY] = TenFootUiEventNameEnum.Search :: string,
		}

		local eventHandlerMap = {}

		local function TestComponent()
			return React.createElement(
				"Frame",
				nil,
				React.createElement("TextButton", { Text = "test" }),
				React.createElement(ControllerBarContainer)
			)
		end

		local renderResult = render(mockStyle(React.createElement(TestComponent)), {
			wrapper = createFocusNavigationWrapper({
				focusNavigation = focusNavigation,
				eventMap = eventMap,
				eventHandlerMap = eventHandlerMap,
			}),
		})
		local instance = renderResult.getByText("test")

		act(function()
			focusNavigation:focusGuiObject(instance)
		end)

		for _, item in ipairs(expected) do
			expect(renderResult.queryByText(item.text)).never.toBeDefined()
		end
	end)
end)
