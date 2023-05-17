local TenFootUiShell = script:FindFirstAncestor("TenFootUiShell")
local Packages = TenFootUiShell.Parent
local TestUtils = TenFootUiShell.TestUtils
local React = require(Packages.React)
local ReactRoblox = require(Packages.ReactRoblox)
local SharedFlags = require(Packages.SharedFlags)
local mocks = require(Packages.Dev.TenFootUiTesting).TestHelpers.mocks
local JestGlobals = require(Packages.Dev.JestGlobals)
local describe = JestGlobals.describe
local it = JestGlobals.it
local expect = JestGlobals.expect
local TenFootUiBaseViewCard = require(script.Parent.TenFootUiBaseViewCard)
local Constants = require(script.Parent.Parent.Constants)

local TenFootUiCommon = require(Packages.TenFootUiCommon)
local ScreenKind = TenFootUiCommon.TenFootUiRNTypes.ScreenKind
local createTenFootUiShellTestHarness = require(TestUtils.createTenFootUiShellTestHarness)
local GetFFlagUIBloxEnableRoDSDesignTokenSupport = SharedFlags.UIBlox.GetFFlagUIBloxEnableRoDSDesignTokenSupport

type ScreenKind = TenFootUiCommon.ScreenKind
type RouteState = TenFootUiCommon.RouteState
type Descriptor = TenFootUiCommon.Descriptor
type Props = TenFootUiBaseViewCard.Props

describe("TenFootUiBaseViewCard", function()
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

	it("should render with props correctly", function()
		local testDescriptor: Descriptor = mocks.makeMockDescriptor(testKey, testState, ScreenKind.Default)
		local testAdorneeParent = Instance.new("Folder") :: Instance
		local testSurfaceGuiParent = Instance.new("Folder") :: Instance

		local adorneeExt = nil
		local surfaceGuiExt = nil

		local testIsVisible = false
		local testProps = {
			groupTransparency = 0,
			isVisible = testIsVisible,
			isFocusable = true,
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
			screenProps = { isVisible = true },
		}

		local root = ReactRoblox.createRoot(Instance.new("Folder"))
		ReactRoblox.act(function()
			root:render(
				React.createElement(
					createTenFootUiShellTestHarness(),
					nil,
					React.createElement(TenFootUiBaseViewCard, testProps)
				)
			)
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
			root:render(
				React.createElement(
					createTenFootUiShellTestHarness(),
					nil,
					React.createElement(TenFootUiBaseViewCard, testProps)
				)
			)
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

	it("should render Overlay screen with props correctly", function()
		local testDescriptor: Descriptor = mocks.makeMockDescriptor(
			testKey,
			testState,
			ScreenKind.Overlay,
			nil,
			Vector2.new(0.5, 0.5),
			Vector2.new(1, 1),
			false
		)

		local testAdorneeParent = Instance.new("Folder") :: Instance
		local testSurfaceGuiParent = Instance.new("Folder") :: Instance

		local adorneeExt = nil
		local surfaceGuiExt = nil
		local testIsVisible = false
		local testProps = {
			groupTransparency = 0,
			isFocusable = true,
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
			root:render(
				React.createElement(
					createTenFootUiShellTestHarness(),
					nil,
					React.createElement(TenFootUiBaseViewCard, testProps)
				)
			)
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
			root:render(
				React.createElement(
					createTenFootUiShellTestHarness(),
					nil,
					React.createElement(TenFootUiBaseViewCard, testProps)
				)
			)
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

	it("should create TextButton to absorb input for Overlay screen", function()
		local testDescriptor: Descriptor = mocks.makeMockDescriptor(
			testKey,
			testState,
			ScreenKind.Overlay,
			nil,
			Vector2.new(0.5, 0.5),
			Vector2.new(1, 1),
			true
		)
		local testAdorneeParent = Instance.new("Folder") :: Instance
		local testSurfaceGuiParent = Instance.new("Folder") :: Instance
		local testIsVisible = false
		local testProps = {
			isVisible = testIsVisible,
			groupTransparency = 0,
			isFocusable = true,
			descriptor = testDescriptor,
			adorneeParent = testAdorneeParent,
			surfaceGuiParent = testSurfaceGuiParent,
			adorneeAnchored = true,
			setAdornee = function() end,
			setSurfaceGui = function() end,
		}
		local root = ReactRoblox.createRoot(Instance.new("Folder"))
		ReactRoblox.act(function()
			root:render(
				React.createElement(
					createTenFootUiShellTestHarness(),
					nil,
					React.createElement(TenFootUiBaseViewCard, testProps)
				)
			)
		end)
		local dims, cframe, _ = Constants.GetFullScreenDims()
		expect(testAdorneeParent:FindFirstChild("AbsorbInput_Part")).toEqual(expect.objectContaining({
			ClassName = "Part",
			Size = dims,
			CFrame = cframe,
		}))
		expect(testSurfaceGuiParent:FindFirstChild("AbsorbInput_SurfaceGui")).toBeDefined()
		expect(testSurfaceGuiParent:FindFirstChild("AbsorbInput_TextButton", true)).toEqual(expect.objectContaining({
			ClassName = "TextButton",
			BorderSizePixel = 0,
			Size = UDim2.fromScale(1, 1),
			BackgroundTransparency = 1,
			Text = "",
		}))
		root:unmount()
	end)

	if GetFFlagUIBloxEnableRoDSDesignTokenSupport() then
		it("should wrap scenes with an appropriate default component", function()
			local testDescriptor: Descriptor = mocks.makeMockDescriptor(testKey, testState, ScreenKind.Default)

			local testAdorneeParent = Instance.new("Folder") :: Instance
			local testSurfaceGuiParent = Instance.new("Folder") :: Instance

			local surfaceGuiExt = (nil :: any) :: Instance?

			local testIsVisible = false
			local testProps = {
				groupTransparency = 0,
				isFocusable = true,
				isVisible = testIsVisible,
				descriptor = testDescriptor,
				adorneeParent = testAdorneeParent,
				surfaceGuiParent = testSurfaceGuiParent,
				adorneeAnchored = true,
				setAdornee = function(...) end,
				setSurfaceGui = function(surfaceGui)
					surfaceGuiExt = surfaceGui
				end,
			}

			testProps.descriptor.options.screenWrapper = nil

			local root = ReactRoblox.createRoot(Instance.new("Folder"))
			ReactRoblox.act(function()
				root:render(
					React.createElement(
						createTenFootUiShellTestHarness(),
						nil,
						React.createElement(TenFootUiBaseViewCard, testProps)
					)
				)
			end)
			local result = if surfaceGuiExt then surfaceGuiExt:FindFirstChild("TenFootUiOverflowScreen", true) else nil
			expect(result).toBeDefined()
			root:unmount()
		end)
	end

	it("should wrap scenes with a custom component", function()
		local testDescriptor: Descriptor = mocks.makeMockDescriptor(testKey, testState, ScreenKind.Default)

		local testAdorneeParent = Instance.new("Folder") :: Instance
		local testSurfaceGuiParent = Instance.new("Folder") :: Instance

		local surfaceGuiExt = (nil :: any) :: Instance?

		local testIsVisible = false
		local testProps = {
			groupTransparency = 0,
			isFocusable = true,
			isVisible = testIsVisible,
			descriptor = testDescriptor,
			adorneeParent = testAdorneeParent,
			surfaceGuiParent = testSurfaceGuiParent,
			adorneeAnchored = true,
			setAdornee = function(...) end,
			setSurfaceGui = function(surfaceGui)
				surfaceGuiExt = surfaceGui
			end,
		}

		testProps.descriptor.options.screenWrapper = function(props: any)
			return React.createElement("Frame", { Name = "FooFrame" }, props.children)
		end

		local root = ReactRoblox.createRoot(Instance.new("Folder"))
		ReactRoblox.act(function()
			root:render(
				React.createElement(
					createTenFootUiShellTestHarness(),
					nil,
					React.createElement(TenFootUiBaseViewCard, testProps)
				)
			)
		end)
		local result = if surfaceGuiExt then surfaceGuiExt:FindFirstChild("FooFrame", true) else nil
		expect(result).toBeDefined()

		root:unmount()
	end)
end)
