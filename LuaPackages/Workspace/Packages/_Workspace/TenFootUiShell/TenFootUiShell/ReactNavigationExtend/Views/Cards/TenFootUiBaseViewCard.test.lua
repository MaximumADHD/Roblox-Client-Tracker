local TenFootUiShell = script:FindFirstAncestor("TenFootUiShell")
local Packages = TenFootUiShell.Parent
local React = require(Packages.React)
local ReactRoblox = require(Packages.ReactRoblox)
local LuauPolyfill = require(Packages.LuauPolyfill)
local Object = LuauPolyfill.Object
local mocks = require(Packages.Dev.TenFootUiTesting).TestHelpers.mocks
local JestGlobals = require(Packages.Dev.JestGlobals)
local it = JestGlobals.it
local expect = JestGlobals.expect
local TenFootUiBaseViewCard = require(script.Parent.TenFootUiBaseViewCard)
local TenFootUiCommon = require(Packages.TenFootUiCommon)

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

local testDescriptor: Descriptor = mocks.makeMockDescriptor(testKey, "Default", testState)

it("should render with props correctly", function()
	local adorneeExt
	local surfaceGuiExt
	local function wrappedElement(props: any)
		local adornee, setAdornee = React.useState(nil)
		local surfaceGui, setSurfaceGui = React.useState(nil)

		adorneeExt = adornee
		surfaceGuiExt = surfaceGui

		local newProps: Props = Object.assign({}, table.clone(props), {
			setAdornee = setAdornee,
			setSurfaceGui = setSurfaceGui,
		})

		return React.createElement(TenFootUiBaseViewCard, newProps)
	end

	local testAdorneeParent = Instance.new("Folder")
	local testSurfaceGuiParent = Instance.new("Folder")

	local testIsVisible = false
	local testProps = {
		isVisible = testIsVisible,
		descriptor = testDescriptor,
		adorneeParent = testAdorneeParent,
		surfaceGuiParent = testSurfaceGuiParent,
	}

	local element = React.createElement(wrappedElement, testProps)

	local root = ReactRoblox.createRoot(Instance.new("Folder"))
	ReactRoblox.act(function()
		root:render(element)
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
	element = React.createElement(wrappedElement, testProps)
	ReactRoblox.act(function()
		root:render(element)
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
