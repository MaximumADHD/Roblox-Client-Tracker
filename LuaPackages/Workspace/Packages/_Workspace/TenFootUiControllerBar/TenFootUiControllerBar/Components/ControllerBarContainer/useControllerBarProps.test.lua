local root = script:FindFirstAncestor("TenFootUiControllerBar")
local Packages = root.Parent
local React = require(Packages.React)
local ReactFocusNavigation = require(Packages.ReactFocusNavigation)
local ReactTestingLibrary = require(Packages.Dev.ReactTestingLibrary)
local JestGlobals = require(Packages.Dev.JestGlobals)
local TenFootUiEventNameEnum = require(Packages.TenFootUiCommon).TenFootUiEventNameEnum
local createFocusNavigationWrapper = require(root.TestUtils).createFocusNavigationWrapper
local FocusNavigationService = ReactFocusNavigation.FocusNavigationService
local CoreGuiInterface = ReactFocusNavigation.EngineInterface.CoreGui
local UIBlox = require(Packages.UIBlox)
local ControllerBar = require(root.Components.ControllerBar)
local Images = UIBlox.App.ImageSet.Images
local render = ReactTestingLibrary.render
local act = ReactTestingLibrary.act
local cleanup = ReactTestingLibrary.cleanup

local expect = JestGlobals.expect
local describe = JestGlobals.describe
local it = JestGlobals.it
local jest = JestGlobals.jest
local beforeEach = JestGlobals.beforeEach
local afterEach = JestGlobals.afterEach
local useControllerBarProps = require(script.Parent.useControllerBarProps)

describe("useControllerBarProps", function()
	local focusNavigation
	beforeEach(function()
		focusNavigation = FocusNavigationService.new(CoreGuiInterface)
	end)

	afterEach(function()
		focusNavigation:focusGuiObject(nil)
		focusNavigation:teardown()
		cleanup()
	end)
	it("should pass through items to be displayed", function()
		local reporter = jest.fn()
		local expected = {
			items = {
				{
					icon = Images["icons/controls/keys/xboxY"],
					text = "Localized:CommonUI.Features.Label.ControllerBar.Search",
				},
			},
		}

		local eventMap = {
			[Enum.KeyCode.ButtonY] = TenFootUiEventNameEnum.Search :: string,
		}

		local eventHandlerMap = {
			[TenFootUiEventNameEnum.HoldToPlay :: string] = { handler = function(e: any) end },
			[TenFootUiEventNameEnum.Search :: string] = { handler = function(e: any) end },
		}

		local function TestComponent(props: { reporter: (ControllerBar.Props) -> () })
			local controllerBarProps = useControllerBarProps()
			React.useEffect(function()
				props.reporter(controllerBarProps)
			end, { controllerBarProps })
			return React.createElement("TextButton", { Text = "test" })
		end

		local renderResult = render(React.createElement(TestComponent, { reporter = reporter }), {
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

		expect(reporter).toHaveBeenCalledWith(expected)
	end)
end)
