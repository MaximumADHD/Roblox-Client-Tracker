local ReplicatedStorage = game:GetService("ReplicatedStorage")
local TenFootUiShell = script:FindFirstAncestor("TenFootUiShell")
local Packages = TenFootUiShell.Parent
local TestUtils = TenFootUiShell.TestUtils
local React = require(Packages.React)
local ReactRoblox = require(Packages.ReactRoblox)
local mocks = require(Packages.Dev.TenFootUiTesting).TestHelpers.mocks
local JestGlobals = require(Packages.Dev.JestGlobals)
local it = JestGlobals.it
local beforeEach = JestGlobals.beforeEach
local expect = JestGlobals.expect
local TenFootUiScene = require(TenFootUiShell.Hooks.TenFootUiScene)
local TenFootUiStackViewCard = require(script.Parent.TenFootUiStackViewCard)
local TenFootUiCommon = require(Packages.TenFootUiCommon)
local createTenFootUiShellTestHarness = require(TestUtils.createTenFootUiShellTestHarness)

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

local testDescriptor: Descriptor = mocks.makeMockDescriptor(testKey, testState, "Default")

beforeEach(function()
	local backgroundModel = Instance.new("Model")
	backgroundModel.Name = "TenFootUiBackgroundShapes"
	backgroundModel.Parent = ReplicatedStorage

	TenFootUiScene.initialize()
end)

it("should create constraint when adornee parent is a part", function()
	local testAdorneeParent = Instance.new("Part")
	local testSurfaceGuiParent = Instance.new("Folder")

	local testIsVisible = false
	local testProps: Props = {
		isVisible = testIsVisible,
		viewState = "Opened",
		descriptor = testDescriptor,
		adorneeParent = testAdorneeParent,
		surfaceGuiParent = testSurfaceGuiParent,
		screenProps = {},
		setOpened = function() end,
		setClosed = function() end,
	}
	local TenFootUiStackViewCardWithTenFootUiTestHarness = createTenFootUiShellTestHarness(TenFootUiStackViewCard)

	local element = React.createElement(TenFootUiStackViewCardWithTenFootUiTestHarness, testProps)

	local root = ReactRoblox.createRoot(Instance.new("Folder"))
	ReactRoblox.act(function()
		root:render(element)
	end)

	expect(testSurfaceGuiParent:FindFirstChildOfClass("SurfaceGui")).never.toBeNil()

	local adornee = testAdorneeParent:FindFirstChildOfClass("Part") :: Part
	expect(adornee).never.toBeNil()

	local constrain = adornee:FindFirstChildOfClass("RigidConstraint") :: RigidConstraint

	expect(constrain).never.toBeNil()
	expect(constrain.Attachment0).toEqual(testAdorneeParent:FindFirstChildOfClass("Attachment"))
	expect(constrain.Attachment1).toEqual(adornee:FindFirstChildOfClass("Attachment"))

	root:unmount()
end)

it("should not create constraint when adornee parent is a part", function()
	local testAdorneeParent = Instance.new("Folder")
	local testSurfaceGuiParent = Instance.new("Folder")

	local testIsVisible = false
	local testProps: Props = {
		isVisible = testIsVisible,
		viewState = "Opened",
		descriptor = testDescriptor,
		adorneeParent = testAdorneeParent,
		surfaceGuiParent = testSurfaceGuiParent,
		screenProps = {},
		setOpened = function() end,
		setClosed = function() end,
	}
	local TenFootUiStackViewCardWithTenFootUiTestHarness = createTenFootUiShellTestHarness(TenFootUiStackViewCard)

	local element = React.createElement(TenFootUiStackViewCardWithTenFootUiTestHarness, testProps)

	local root = ReactRoblox.createRoot(Instance.new("Folder"))
	ReactRoblox.act(function()
		root:render(element)
	end)

	expect(testSurfaceGuiParent:FindFirstChildOfClass("SurfaceGui")).never.toBeNil()

	local adornee = testAdorneeParent:FindFirstChildOfClass("Part") :: Part
	expect(adornee).never.toBeNil()

	local constrain = adornee:FindFirstChildOfClass("RigidConstraint") :: RigidConstraint

	expect(constrain).toBeNil()

	root:unmount()
end)
