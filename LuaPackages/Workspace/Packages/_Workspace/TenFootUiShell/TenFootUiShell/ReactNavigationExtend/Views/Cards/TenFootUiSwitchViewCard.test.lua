local TenFootUiShell = script:FindFirstAncestor("TenFootUiShell")
local Packages = TenFootUiShell.Parent
local React = require(Packages.React)
local ReactRoblox = require(Packages.ReactRoblox)
local mocks = require(Packages.Dev.TenFootUiTesting).TestHelpers.mocks
local JestGlobals = require(Packages.Dev.JestGlobals)
local it = JestGlobals.it
local expect = JestGlobals.expect
local TenFootUiSwitchViewCard = require(script.Parent.TenFootUiSwitchViewCard)
local TenFootUiCommon = require(Packages.TenFootUiCommon)

type ScreenKind = TenFootUiCommon.ScreenKind
type RouteState = TenFootUiCommon.RouteState
type Descriptor = TenFootUiCommon.Descriptor
type Props = TenFootUiSwitchViewCard.Props

local testKey = "foo"
local routeState: RouteState = {
	key = testKey,
	routeName = "Foo",
}
local testState = {
	routes = {
		routeState,
	},
	index = 1,
	key = testKey,
}

local testDescriptor: Descriptor = mocks.makeMockDescriptor(testKey, testState, "Default")

it("should render with props correctly", function()
	local testAdorneeParent = Instance.new("Folder")
	local testSurfaceGuiParent = Instance.new("Folder")

	local testIsVisible = false
	local testProps: Props = {
		isVisible = testIsVisible,
		index = 1,
		descriptor = testDescriptor,
		adorneeParent = testAdorneeParent,
		surfaceGuiParent = testSurfaceGuiParent,
	}

	local element = React.createElement(TenFootUiSwitchViewCard, testProps)

	local root = ReactRoblox.createRoot(Instance.new("Folder"))
	ReactRoblox.act(function()
		root:render(element)
	end)

	expect(testAdorneeParent:FindFirstChildOfClass("Part")).never.toBeNil()
	expect(testSurfaceGuiParent:FindFirstChildOfClass("SurfaceGui")).never.toBeNil()

	root:unmount()
end)
