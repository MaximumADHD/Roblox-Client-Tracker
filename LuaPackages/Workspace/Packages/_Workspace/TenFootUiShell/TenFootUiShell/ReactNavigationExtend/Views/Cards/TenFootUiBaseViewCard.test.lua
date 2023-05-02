local TenFootUiShell = script:FindFirstAncestor("TenFootUiShell")
local Packages = TenFootUiShell.Parent
local TestUtils = TenFootUiShell.TestUtils
local React = require(Packages.React)
local ReactRoblox = require(Packages.ReactRoblox)
local mocks = require(Packages.Dev.TenFootUiTesting).TestHelpers.mocks
local JestGlobals = require(Packages.Dev.JestGlobals)
local it = JestGlobals.it
local expect = JestGlobals.expect
local TenFootUiBaseViewCard = require(script.Parent.TenFootUiBaseViewCard)
local TenFootUiCommon = require(Packages.TenFootUiCommon)
local createTenFootUiShellTestHarness = require(TestUtils.createTenFootUiShellTestHarness)

type ScreenKind = TenFootUiCommon.ScreenKind
type RouteState = TenFootUiCommon.RouteState
type Descriptor = TenFootUiCommon.Descriptor
type Props = TenFootUiBaseViewCard.Props

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
	local testAdorneeParent = Instance.new("Folder") :: Instance
	local testSurfaceGuiParent = Instance.new("Folder") :: Instance

	local adorneeExt = nil
	local surfaceGuiExt = nil

	local testIsVisible = false
	local testProps = {
		isVisible = testIsVisible,
		descriptor = testDescriptor,
		adorneeParent = testAdorneeParent,
		surfaceGuiParent = testSurfaceGuiParent,
		adorneeAnchored = true,
		setAdornee = function(adornee)
			adorneeExt = adornee
		end,
		setSurfaceGui = function(surfaceGui)
			surfaceGuiExt = surfaceGui
		end,
	}

	local root = ReactRoblox.createRoot(Instance.new("Folder"))
	ReactRoblox.act(function()
		root:render(React.createElement(createTenFootUiShellTestHarness(TenFootUiBaseViewCard), testProps))
	end)

	expect(testAdorneeParent:FindFirstChildOfClass("Part")).toEqual(adorneeExt)
	expect(adorneeExt).toEqual(expect.objectContaining({
		ClassName = "Part",
		Name = testKey .. "_Part",
	}))

	expect(testSurfaceGuiParent:FindFirstChildOfClass("SurfaceGui")).toEqual(surfaceGuiExt)
	expect(surfaceGuiExt).toEqual(expect.objectContaining({
		ClassName = "SurfaceGui",
		Name = testKey .. "_SurfaceGui",
		Enabled = testIsVisible,
	}))

	testProps.isVisible = not testIsVisible
	ReactRoblox.act(function()
		root:render(React.createElement(createTenFootUiShellTestHarness(TenFootUiBaseViewCard), testProps))
	end)

	expect(testAdorneeParent:FindFirstChildOfClass("Part")).toEqual(adorneeExt)
	expect(adorneeExt).toEqual(expect.objectContaining({
		ClassName = "Part",
		Name = testKey .. "_Part",
	}))

	expect(testSurfaceGuiParent:FindFirstChildOfClass("SurfaceGui")).toEqual(surfaceGuiExt)
	expect(surfaceGuiExt).toEqual(expect.objectContaining({
		ClassName = "SurfaceGui",
		Name = testKey .. "_SurfaceGui",
		Enabled = not testIsVisible,
	}))

	root:unmount()
end)
