--!nonstrict
return function()
	local CoreGui = game:GetService("CoreGui")
	local CorePackages = game:GetService("CorePackages")

	local Roact = require(CorePackages.Roact)
	local Rodux = require(CorePackages.Rodux)
	local RoactGamepad = require(CorePackages.Packages.RoactGamepad)
	local Cryo = require(CorePackages.Cryo)
	local RoactRodux = require(CorePackages.RoactRodux)
	local Rhodium = require(CorePackages.Rhodium)

	local JestGlobals = require(CorePackages.JestGlobals)
	local jest = JestGlobals.jest
	local expect = JestGlobals.expect

	local PeekView = require(script.Parent.PeekView)
	local PeekViewState = require(CorePackages.Workspace.Packages.PeekView).PeekViewState
	local FocusControllerProvider = require(CorePackages.Workspace.Packages.UnitTestHelpers).FocusControllerProvider
	local StyleConstants = require(CorePackages.Workspace.Packages.Style).Constants
	local StyleProvider = require(CorePackages.Workspace.Packages.Style).AppStyleProvider
	local RoactServices = require(CorePackages.Workspace.Packages.RoactServices).RoactServices

	local GetFFlagPeekViewRefactorEnabled =
		require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagPeekViewRefactorEnabled

	local appStyle = {
		themeName = StyleConstants.ThemeName.Dark,
		fontName = StyleConstants.FontName.Gotham,
	}

	local store = Rodux.Store.new(function(state, action)
		return {
			Navigation = if GetFFlagPeekViewRefactorEnabled() then nil else {
				history = {
					{ { name = "Page1" } },
				}
			},
			TopBar = {
				topBarHeight = 28,
			},
			LastInputType = if GetFFlagPeekViewRefactorEnabled() then nil else {
				lastInputGroup = "Gamepad"
			}
		}
	end)

	-- TODO: Replace mockServices with util version once it is packagified
	local mockServices = function(componentMap, extraArgs: any?)
		local root = componentMap

		if extraArgs.includeStoreProvider then
			root = {
				StoreProvider = Roact.createElement(RoactRodux.StoreProvider, {
					store = store,
				}, root),
			}
		end

		if extraArgs.includeStyleProvider then
			root = {
				StyleProvider = Roact.createElement(StyleProvider, {
					style = appStyle,
				}, root),
			}
		end

		root = Roact.createElement(RoactServices.ServiceProvider, {}, root)

		if extraArgs.includeFocusControllerProvider then
			root = Roact.createElement(FocusControllerProvider, {
				captureFocusOnMount = extraArgs.captureFocusOnMount,
				focusController = extraArgs.focusController,
			}, root)
		end

		return root
	end

	local TestRoot = function(peekViewProps)
		return Roact.createElement("ScreenGui", {
			ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
		}, {
			PeekView = mockServices({
				Root = Roact.createElement(PeekView, peekViewProps),
			}, {
				includeStyleProvider = true,
				includeStoreProvider = true,

				captureFocusOnMount = true,
				includeFocusControllerProvider = true,
			}),
		})
	end

	local briefViewHeight = 50
	local superBriefViewHeight = 25

	local bottomDockedContainerContent = Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, briefViewHeight),
	})

	local defaultProps = {
		briefViewContentHeight = UDim.new(0, briefViewHeight),
		superBriefViewContentHeight = UDim.new(0, superBriefViewHeight),
		canDragFullViewToBrief = true,
		thumbstickScrollEnabled = true,

		bottomDockedContainerHeight = briefViewHeight,
		bottomDockedContainerContent = bottomDockedContainerContent,

		isScrollingEnabled = true,

		[Roact.Children] = {
			Content = Roact.createElement(RoactGamepad.Focusable.Frame, {
				Size = UDim2.new(1, 0, 0, 2000),
			}),
		},
	}

	beforeAll(function(context)
		context.Rhodium = {
			Element = Rhodium.Element,
			XPath = Rhodium.XPath,
			VirtualInput = Rhodium.VirtualInput,
		}
		context.act = Roact.act :: (any) -> ()
	end)

	it("should successfully create a peek view", function(context)
		local root = Roact.createElement(TestRoot, defaultProps)

		local folder = Instance.new("Folder")
		folder.Parent = CoreGui
		local instance = Roact.mount(root, folder)

		local screenGui = folder:FindFirstChildOfClass("ScreenGui")
		local peekViewInstance = screenGui:GetChildren()[1]
		local rootPath = context.Rhodium.XPath.new(peekViewInstance)
		local peekView = context.Rhodium.Element.new(rootPath)

		expect(peekView:waitForRbxInstance(1)).toBeDefined()

		Roact.unmount(instance)
		folder:Destroy()
	end)

	it("should scroll with thumbstick", function(context)
		local props = Cryo.Dictionary.join(defaultProps, {
			peekViewState = PeekViewState.Full,
			mountAsFullView = true,
		})
		local root = Roact.createElement(TestRoot, props)

		local folder = Instance.new("Folder")
		folder.Parent = CoreGui
		local instance = Roact.mount(root, folder)

		local screenGui = folder:FindFirstChildOfClass("ScreenGui")
		local peekViewInstance = screenGui:GetChildren()[1]
		local rootPath = context.Rhodium.XPath.new(peekViewInstance)
		local peekView = context.Rhodium.Element.new(rootPath)
		expect(peekView:waitForRbxInstance(1)).toBeDefined()

		local swipeScrollingFramePath = rootPath:cat(context.Rhodium.XPath.new("PeekView.ClipFrame.SwipeScrollingFrame"))
		local scrollingFrameElement = context.Rhodium.Element.new(swipeScrollingFramePath)
		local scrollingFrameInstance = scrollingFrameElement:waitForRbxInstance(1)

		-- Wait for peek view to settle into full view
		context.act(function()
			wait(0.3)
		end)

		local startCanvasPosition = scrollingFrameInstance.CanvasPosition.Y
		local gamepad = context.Rhodium.VirtualInput.GamePad.new()

		context.act(function()
			gamepad:moveStickTo(Enum.KeyCode.Thumbstick2, Vector2.new(0, -1))
			wait(0.25)
		end)

		context.act(function()
			wait(0.5)
		end)

		local distanceScrolled = scrollingFrameInstance.CanvasPosition.Y - startCanvasPosition
		expect(distanceScrolled).toBeGreaterThan(100)

		Roact.unmount(instance)
		folder:Destroy()
		gamepad:disconnect()
	end)

	it("should not collapse when too small to fully extend", function(context)
		local viewStateChanged = jest.fn()

		local props = Cryo.Dictionary.join(defaultProps, {
			peekViewState = PeekViewState.Full,
			mountAsFullView = true,
			mountAnimation = false,
			viewStateChanged = viewStateChanged,

			[Roact.Children] = {
				Content = Roact.createElement(RoactGamepad.Focusable.Frame, {
					Size = UDim2.new(1, 0, 0, 300), -- too small to extend all the way up
				}),
			},
		})
		local root = Roact.createElement(TestRoot, props)

		local folder = Instance.new("Folder")
		folder.Parent = CoreGui
		local instance = Roact.mount(root, folder)

		local screenGui = folder:FindFirstChildOfClass("ScreenGui")
		local peekViewInstance = screenGui:GetChildren()[1]
		local rootPath = context.Rhodium.XPath.new(peekViewInstance)
		local peekView = context.Rhodium.Element.new(rootPath)

		expect(peekView:waitForRbxInstance(1)).toBeDefined()

		-- Wait for peek view to settle into full view (and possibly collapse to hidden)
		context.act(function()
			wait(1)
		end)

		expect(viewStateChanged).toBeCalledTimes(1)
		expect(viewStateChanged).toBeCalledWith(PeekViewState.Full, PeekViewState.Hidden)

		Roact.unmount(instance)
		folder:Destroy()
	end)
end
