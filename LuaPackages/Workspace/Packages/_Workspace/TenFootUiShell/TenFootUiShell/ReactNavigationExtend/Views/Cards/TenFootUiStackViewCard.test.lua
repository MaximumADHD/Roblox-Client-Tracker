local TenFootUiShell = script:FindFirstAncestor("TenFootUiShell")
local Packages = TenFootUiShell.Parent
local React = require(Packages.React)
local ReactRoblox = require(Packages.ReactRoblox)
local mocks = require(Packages.Dev.TenFootUiTesting).TestHelpers.mocks
local JestGlobals = require(Packages.Dev.JestGlobals)
local it = JestGlobals.it
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local TenFootUiStackViewCard = require(script.Parent.TenFootUiStackViewCard)
local TenFootUiCommon = require(Packages.TenFootUiCommon)

type ScreenKind = TenFootUiCommon.ScreenKind
type RouteState = TenFootUiCommon.RouteState
type Descriptor = TenFootUiCommon.Descriptor
type Props = TenFootUiStackViewCard.Props

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

local testDescriptor: Descriptor = mocks.makeMockDescriptor(testKey, "Default", testState)

describe("should render with props correctly", function()
	it("should create constraint when adornee parent is a part", function()
		local testAdorneeParent = Instance.new("Part")
		local testSurfaceGuiParent = Instance.new("Folder")

		local testIsVisible = false
		local testProps: Props = {
			isVisible = testIsVisible,
			descriptor = testDescriptor,
			adorneeParent = testAdorneeParent,
			surfaceGuiParent = testSurfaceGuiParent,
		}

		local element = React.createElement(TenFootUiStackViewCard, testProps)

		local root = ReactRoblox.createRoot(Instance.new("Folder"))
		ReactRoblox.act(function()
			root:render(element)
		end)

		expect(testSurfaceGuiParent:FindFirstChildOfClass("SurfaceGui")).never.toBeNil()

		local adornee = testAdorneeParent:FindFirstChildOfClass("Part") :: Part
		expect(adornee).never.toBeNil()

		local constrain = adornee:FindFirstChildOfClass("WeldConstraint") :: WeldConstraint

		expect(constrain).never.toBeNil()
		expect(constrain.Part0).toEqual(testAdorneeParent)
		expect(constrain.Part1).toEqual(adornee)

		root:unmount()
	end)

	it("should not create constraint when adornee parent is a part", function()
		local testAdorneeParent = Instance.new("Folder")
		local testSurfaceGuiParent = Instance.new("Folder")

		local testIsVisible = false
		local testProps: Props = {
			isVisible = testIsVisible,
			descriptor = testDescriptor,
			adorneeParent = testAdorneeParent,
			surfaceGuiParent = testSurfaceGuiParent,
		}

		local element = React.createElement(TenFootUiStackViewCard, testProps)

		local root = ReactRoblox.createRoot(Instance.new("Folder"))
		ReactRoblox.act(function()
			root:render(element)
		end)

		expect(testSurfaceGuiParent:FindFirstChildOfClass("SurfaceGui")).never.toBeNil()

		local adornee = testAdorneeParent:FindFirstChildOfClass("Part") :: Part
		expect(adornee).never.toBeNil()

		local constrain = adornee:FindFirstChildOfClass("WeldConstraint") :: WeldConstraint

		expect(constrain).toBeNil()

		root:unmount()
	end)
end)
