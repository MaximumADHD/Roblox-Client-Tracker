local Main = script:FindFirstAncestor("StudioFoundation")
local Packages = Main.Parent

local React = require(Packages.React)
local JestGlobals = require(Packages.Dev.JestGlobals)
local jest = JestGlobals.jest
local expect = JestGlobals.expect
local it = JestGlobals.it
local describe = JestGlobals.describe
local afterEach = JestGlobals.afterEach
local beforeEach = JestGlobals.beforeEach

local Framework = require(Packages.Framework)
local TestHelpers = Framework.TestHelpers
local Plugin = Framework.ContextServices.Plugin

local StudioUri = require(Main.Util.StudioUri)

local ReactTestingLibrary = require(Packages.Dev.ReactTestingLibrary)
local render = ReactTestingLibrary.render
local cleanup = ReactTestingLibrary.cleanup

local useMouseOver = require(script.Parent.useMouseOver)

describe("useMouseOver", function()
	local mockMouseTrackerInstance
	local mockMouseTracker
	local mockPlugin

	beforeEach(function()
		mockMouseTrackerInstance = {
			Destroy = jest.fn(),
			GetAttribute = jest.fn(),
		}
		mockMouseTracker = {
			RegisterMouseTrackingRelativeToWidgetAsync = jest.fn(function()
				return mockMouseTrackerInstance
			end),
		}
		mockPlugin = {
			GetPluginComponent = jest.fn(function(self, name): any
				if name == "MouseTracker" then
					return mockMouseTracker
				end
				return nil
			end),
		}
		jest.useFakeTimers()
		jest.setEngineFrameTime(1000 / 60)
	end)

	afterEach(function()
		cleanup()
		jest.useRealTimers()
	end)

	local function Wrapper(props)
		return TestHelpers.provideMockContext({
			Plugin.new(mockPlugin),
		}, props.children)
	end

	local function TestComponent(props)
		useMouseOver({
			anchorUri = props.anchorUri,
			anchorRef = props.anchorRef,
			isOpen = props.isOpen,
			onClose = props.onClose,
		})
		return nil
	end

	it("should call onClose when mouse moves out of bounds", function()
		local onClose = jest.fn()
		local anchorRef = {
			current = ({
				AbsoluteSize = Vector2.new(100, 100),
				Parent = Instance.new("Frame"),
			} :: unknown) :: GuiBase2d,
		}

		render(
			React.createElement(TestComponent, {
				isOpen = true,
				onClose = onClose,
				anchorUri = StudioUri.fromWidget("TestPlugin", "testAnchor"),
				anchorRef = anchorRef,
			}),
			{ wrapper = Wrapper }
		)

		-- Simulate mouse being outside
		mockMouseTrackerInstance.GetAttribute.mockReturnValue(Vector2.new(150, 150))

		jest.runOnlyPendingTimers()

		expect(onClose).toHaveBeenCalledTimes(1)
	end)

	it("should not call onClose when mouse is inside bounds", function()
		local onClose = jest.fn()
		local anchorRef = {
			current = ({
				AbsoluteSize = Vector2.new(100, 100),
				Parent = Instance.new("Frame"),
			} :: unknown) :: GuiBase2d,
		}

		render(
			React.createElement(TestComponent, {
				isOpen = true,
				onClose = onClose,
				anchorUri = StudioUri.fromWidget("TestPlugin", "testAnchor"),
				anchorRef = anchorRef,
			}),
			{ wrapper = Wrapper }
		)

		-- Simulate mouse being inside
		mockMouseTrackerInstance.GetAttribute.mockReturnValue(Vector2.new(50, 50))

		jest.runOnlyPendingTimers()

		expect(onClose).never.toHaveBeenCalled()
	end)

	it("should cleanup when isOpen becomes false", function()
		local onClose = jest.fn()
		local anchorRef = {
			current = ({
				AbsoluteSize = Vector2.new(100, 100),
				Parent = Instance.new("Frame"),
			} :: unknown) :: GuiBase2d,
		}

		local root = render(
			React.createElement(TestComponent, {
				isOpen = true,
				onClose = onClose,
				anchorUri = StudioUri.fromWidget("TestPlugin", "testAnchor"),
				anchorRef = anchorRef,
			}),
			{ wrapper = Wrapper }
		)

		root.rerender(React.createElement(TestComponent, {
			isOpen = false,
			onClose = onClose,
			anchorUri = StudioUri.fromWidget("TestPlugin", "testAnchor"),
			anchorRef = anchorRef,
		}))

		expect(mockMouseTrackerInstance.Destroy).toHaveBeenCalledTimes(1)
	end)

	it("should not do anything if anchorRef is not set", function()
		local onClose = jest.fn()

		render(
			React.createElement(TestComponent, {
				isOpen = true,
				onClose = onClose,
				anchorUri = StudioUri.fromWidget("TestPlugin", "testAnchor"),
				anchorRef = { current = nil },
			}),
			{ wrapper = Wrapper }
		)

		expect(mockPlugin.GetPluginComponent).never.toHaveBeenCalled()
	end)
end)
