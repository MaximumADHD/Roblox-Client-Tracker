local Main = script:FindFirstAncestor("StudioFoundation")
local Packages = Main.Parent

local JestGlobals = require(Packages.Dev.JestGlobals)
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it

local React = require(Packages.React)
local ReactRoblox = require(Packages.ReactRoblox)

local StudioUri = require(Main.Util.StudioUri)

local Framework = require(Packages.Framework)
local provideMockContext = Framework.TestHelpers.provideMockContext

local useWidgets = require(script.Parent.useWidgets)

type Handle = {
	widgets: any,
}

local function UseMenuWrapper(props: { HandleRef: { current: Handle? } })
	local widgets = useWidgets()
	React.useImperativeHandle(props.HandleRef, function(): Handle
		return {
			widgets = widgets,
		}
	end, { widgets })
end

local function mountAndReturnHandleRefAndCleanupFunc()
	local container = Instance.new("ScreenGui")
	local root = ReactRoblox.createRoot(container)
	local handleRef = React.createRef() :: { current: Handle? }

	ReactRoblox.act(function()
		root:render(provideMockContext(
			{},
			{
				Child = React.createElement(UseMenuWrapper, { HandleRef = handleRef }),
			} :: any
		))
	end)

	return handleRef, function()
		ReactRoblox.act(function()
			root:unmount()
			container:Destroy()
		end)
	end
end

describe("useWidgets", function()
	it("should mount and unmount without errors", function()
		local handleRef, cleanup = mountAndReturnHandleRefAndCleanupFunc()
		local current = handleRef.current
		assert(current, "No current handle")
		local widgets = current.widgets
		local mockPluginGui = Instance.new("ScreenGui")
		local frameA = Instance.new("Frame")
		frameA.Parent = mockPluginGui
		local frameAUri = {
			DataModel = "Standalone",
			PluginType = "Standalone",
			PluginId = "Ribbon",
			Category = "Widgets",
			ItemId = "Home/FrameA",
		} :: StudioUri
		local frameB = Instance.new("Frame")
		frameB.Parent = mockPluginGui
		local frameBUri = {
			DataModel = "Standalone",
			PluginType = "Standalone",
			PluginId = "Ribbon",
			Category = "Widgets",
			ItemId = "Home/FrameB",
		} :: StudioUri
		widgets:register(frameAUri, frameA, mockPluginGui)
		widgets:register(frameBUri, frameB, mockPluginGui)
		expect(widgets.pendingRegisters).toEqual({
			[StudioUri.toString(frameAUri)] = {
				Uri = frameAUri,
				Widget = frameA,
				DEPRECATED_PluginGui = mockPluginGui,
			},
			[StudioUri.toString(frameBUri)] = {
				Uri = frameBUri,
				Widget = frameB,
				DEPRECATED_PluginGui = mockPluginGui,
			},
		})
		widgets:flush()
		expect(widgets.pendingRegisters).toEqual({})

		widgets:deregister(frameAUri)
		widgets:deregister(frameBUri)
		expect(widgets.pendingDeregisters).toEqual({
			[StudioUri.toString(frameAUri)] = frameAUri,
			[StudioUri.toString(frameBUri)] = frameBUri,
		})
		widgets:flush()
		expect(widgets.pendingDeregisters).toEqual({})

		cleanup()
	end)
end)
