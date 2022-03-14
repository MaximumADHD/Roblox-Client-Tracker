local GuiService = game:GetService("GuiService")

local Stories = script.Parent.Parent.Parent.Parent
local Packages = Stories.Parent.Parent
local Roact = require(Packages.Roact)
local RoactGamepad = require(Packages.RoactGamepad)
local UIBlox = require(Packages.UIBlox)

local ImageSetLabel = UIBlox.Core.ImageSet.Label
local ImageSetButton = UIBlox.Core.ImageSet.Button
local Images = UIBlox.App.ImageSet.Images

local FocusContainer = require(Packages.StoryComponents.FocusContainer)
local InputManager = require(Packages.StoryComponents.InputManager)

local StoryView = require(Packages.StoryComponents.StoryView)
local StoryItem = require(Packages.StoryComponents.StoryItem)

local DarkTheme = require(Packages.UIBlox.App.Style.Themes.DarkTheme)

local ContextualMenu = UIBlox.App.Menu.ContextualMenu
local MenuDirection = UIBlox.App.Menu.MenuDirection

local ContextualMenuOverviewComponent = Roact.Component:extend("ContextualMenuOverviewComponent")

function ContextualMenuOverviewComponent:init()
	self.rootRef = Roact.createRef()

	self.topContainerRef = Roact.createRef()
	self.spawnButtonRef = Roact.createRef()
	self.topContextualMenuRef = Roact.createRef()

	self.botContainerRef = Roact.createRef()
	self.moreButtonRef = Roact.createRef()
	self.botContextualMenuRef = Roact.createRef()

	self.focusController = nil

	self.state = {
		iconMenuOpen = false,
		actionBarMenuOpen = false,
		item2On = false,

		screenSize = Vector2.new(0, 0),
	}
end

function ContextualMenuOverviewComponent:render()
	local function activatedFunction()
		self:setState({
			iconMenuOpen = false,
			actionBarMenuOpen = false,
		})
	end

	local function activatedFunction2()
		self:setState({
			item2On = not self.state.item2On,
		})
	end

	return Roact.createElement(RoactGamepad.Focusable.Frame, {
		Size = UDim2.fromScale(1, 1),
		BackgroundTransparency = 1,

		[Roact.Ref] = self.rootRef,
		defaultChild = self.topContainerRef,
	}, {
		Overview = Roact.createElement("ScrollingFrame", {
			Size = UDim2.fromScale(1, 1),
			CanvasSize = UDim2.new(1, 0, 0, 1000),
			BackgroundTransparency = 1,
			ClipsDescendants = false,
		}, {
			InputManager = RoactGamepad.withFocusController(function(focusController)
				self.focusController = focusController
				return Roact.createElement(InputManager, {
					focusController = focusController,
				})
			end),
			Layout = Roact.createElement("UIListLayout", {
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
				FillDirection = Enum.FillDirection.Vertical,
				SortOrder = Enum.SortOrder.LayoutOrder,
			}),
			Padding = Roact.createElement("UIPadding", {
				PaddingTop = UDim.new(0, 20),
			}),

			IconButton = Roact.createElement(StoryItem, {
				size = UDim2.fromOffset(300, 500),
				layoutOrder = 1,
				title = "Trigger from Icon Button",
				subTitle = "",
				showDivider = true,
			}, {
				Padding = Roact.createElement("UIPadding", {
					PaddingTop = UDim.new(0, 12),
				}),

				TopContainer = Roact.createElement(RoactGamepad.Focusable.Frame, {
					Size = UDim2.new(1, 0, 1, 0),
					BackgroundTransparency = 1,
					[Roact.Ref] = self.topContainerRef,
					NextSelectionDown = self.botContainerRef,
					defaultChild = self.spawnButtonRef,
					inputBindings = {
						OpenMenu = RoactGamepad.Input.onBegin(Enum.KeyCode.ButtonA, function()
							self:setState({
								iconMenuOpen = true,
							})
						end),
						CloseMenu = RoactGamepad.Input.onBegin(Enum.KeyCode.ButtonB, function()
							self:setState({
								iconMenuOpen = false,
							})
						end),
					},
				}, {
					SpawnButton = Roact.createElement(RoactGamepad.Focusable[ImageSetButton], {
						Image = Images["icons/common/more"],
						Size = UDim2.fromOffset(36, 36),
						Position = UDim2.new(1, -12, 0, 0),
						AnchorPoint = Vector2.new(1, 0),
						BackgroundTransparency = 1,
						AutoButtonColor = false,
						[Roact.Event.Activated] = function()
							self:setState({
								iconMenuOpen = true,
							})
						end,
						[Roact.Ref] = self.spawnButtonRef,
					}),

					TopContextualMenuContainer = Roact.createElement(RoactGamepad.Focusable.Frame, {
						Size = UDim2.new(1, 0, 1, 0),
						BackgroundTransparency = 1,
						[Roact.Ref] = self.topContextualMenuRef,
					}, {
						ContextualMenu = Roact.createElement(ContextualMenu, {
							buttonProps = {
								{
									icon = Images["component_assets/circle_17"],
									text = "Item One",
									onActivated = activatedFunction,
								},
								{
									icon = Images["component_assets/circle_17"],
									text = self.state.item2On and "Item Two (On)" or "Item Two (Off)",
									onActivated = activatedFunction2,
								},
								{
									icon = Images["component_assets/circle_17"],
									text = "Item Three",
									onActivated = activatedFunction,
								},
							},

							zIndex = 2,
							open = self.state.iconMenuOpen,
							menuDirection = MenuDirection.Down,
							openPositionY = UDim.new(0, 40),

							closeBackgroundVisible = true,
							screenSize = self.state.screenSize,

							onDismiss = function()
								self:setState({
									iconMenuOpen = false,
								})
							end,
						}),
					}),
				}),
			}),

			ActionBar = Roact.createElement(StoryItem, {
				size = UDim2.fromOffset(300, 500),
				layoutOrder = 2,
				title = "Tigger from Action Bar",
				subTitle = "",
				showDivider = true,
			}, {
				BottomContainer = Roact.createElement(RoactGamepad.Focusable.Frame, {
					Size = UDim2.new(1, 0, 1, 0),
					BackgroundTransparency = 1,
					[Roact.Ref] = self.botContainerRef,
					NextSelectionUp = self.topContainerRef,
					defaultChild = self.moreButtonRef,
					inputBindings = {
						OpenMenu = RoactGamepad.Input.onBegin(Enum.KeyCode.ButtonA, function()
							self:setState({
								actionBarMenuOpen = true,
							})
						end),
						CloseMenu = RoactGamepad.Input.onBegin(Enum.KeyCode.ButtonB, function()
							self:setState({
								actionBarMenuOpen = false,
							})
						end),
					},
				}, {
					Frame = Roact.createElement("Frame", {
						Position = UDim2.fromScale(0.5, 0.5),
						AnchorPoint = Vector2.new(0.5, 0.5),
						Size = UDim2.new(1, 0, 0, 96),
						BackgroundTransparency = DarkTheme.BackgroundUIDefault.Transparency,
						BackgroundColor3 = DarkTheme.BackgroundUIDefault.Color,
						BorderSizePixel = 0,
					}, {
						PlayButton = Roact.createElement("Frame", {
							BorderSizePixel = 0,
							BackgroundColor3 = Color3.fromRGB(0, 176, 111),
							Size = UDim2.new(1, -96, 0, 48),
							Position = UDim2.new(1, -24, 0.5, 0),
							AnchorPoint = Vector2.new(1, 0.5),
						}, {
							PlayLabel = Roact.createElement(ImageSetLabel, {
								Image = Images["icons/common/play"],
								Size = UDim2.fromOffset(36, 36),
								Position = UDim2.fromScale(0.5, 0.5),
								AnchorPoint = Vector2.new(0.5, 0.5),
								BackgroundTransparency = 1,
							}),
						}),

						MoreButton = Roact.createElement(RoactGamepad.Focusable[ImageSetButton], {
							Image = Images["icons/menu/more_on"],
							Size = UDim2.fromOffset(36, 36),
							Position = UDim2.new(0, 30, 0.5, 0),
							AnchorPoint = Vector2.new(0, 0.5),
							BackgroundTransparency = 1,
							AutoButtonColor = false,
							[Roact.Event.Activated] = function()
								self:setState({
									actionBarMenuOpen = true,
								})
							end,
							[Roact.Ref] = self.moreButtonRef,
						}),
					}),

					BottomContextualMenuContainer = Roact.createElement(RoactGamepad.Focusable.Frame, {
						Size = UDim2.new(1, 0, 1, 0),
						BackgroundTransparency = 1,
						ZIndex = 2,
						[Roact.Ref] = self.botContextualMenuRef,
					}, {
						ContextualMenu = Roact.createElement(ContextualMenu, {
							buttonProps = {
								{
									icon = Images["component_assets/circle_17"],
									text = "Item One",
									onActivated = activatedFunction,
								},
								{
									icon = Images["component_assets/circle_17"],
									text = self.state.item2On and "Item Two (On)" or "Item Two (Off)",
									onActivated = activatedFunction2,
								},
								{
									icon = Images["component_assets/circle_17"],
									text = "Item Three",
									onActivated = activatedFunction,
								},
							},

							zIndex = 2,
							open = self.state.actionBarMenuOpen,
							menuDirection = MenuDirection.Up,
							openPositionY = UDim.new(0.5, -96 / 2 + 12),

							closeBackgroundVisible = true,
							screenSize = self.state.screenSize,

							onDismiss = function()
								self:setState({
									actionBarMenuOpen = false,
								})
							end,
						}),
					}),
				}),
			}),
		}),
	})
end

function ContextualMenuOverviewComponent:watchLayerCollector(layerCollector)
	local screenSize = layerCollector.AbsoluteSize
	if not layerCollector.IgnoreGuiInset then
		local topCornerInset, _ = GuiService:GetGuiInset()
		screenSize = screenSize + topCornerInset
	end

	self:setState({
		screenSize = screenSize,
	})

	self.sizeConnection = layerCollector:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
		screenSize = layerCollector.AbsoluteSize
		if not layerCollector.IgnoreGuiInset then
			local topCornerInset, _ = GuiService:GetGuiInset()
			screenSize = screenSize + topCornerInset
		end

		self:setState({
			screenSize = screenSize,
		})
	end)
end

function ContextualMenuOverviewComponent:didMount()
	local root = self.rootRef.current
	local layerCollector = root:FindFirstAncestorWhichIsA("LayerCollector")

	if layerCollector == nil then
		self.ancestryConnection = root.AncestryChanged:Connect(function()
			layerCollector = root:FindFirstAncestorWhichIsA("LayerCollector")
			if layerCollector ~= nil then
				self.ancestryConnection:Disconnect()
				self.ancestryConnection = nil
				self:watchLayerCollector(layerCollector)
			end
		end)
	else
		self:watchLayerCollector(layerCollector)
	end
end

function ContextualMenuOverviewComponent:didUpdate(prevProps, prevState)
	if prevState.iconMenuOpen ~= self.state.iconMenuOpen and self.focusController then
		if prevState.iconMenuOpen then
			self.focusController.moveFocusTo(self.spawnButtonRef)
		else
			self.focusController.moveFocusTo(self.topContextualMenuRef)
		end
	end

	if prevState.actionBarMenuOpen ~= self.state.actionBarMenuOpen and self.focusController then
		if prevState.actionBarMenuOpen then
			self.focusController.moveFocusTo(self.moreButtonRef)
		else
			self.focusController.moveFocusTo(self.botContextualMenuRef)
		end
	end
end

function ContextualMenuOverviewComponent:willUnmount()
	if self.sizeConnection then
		self.sizeConnection:Disconnect()
		self.sizeConnection = nil
	end

	if self.ancestryConnection then
		self.ancestryConnection:Disconnect()
		self.ancestryConnection = nil
	end
end

return function(target)
	local handle = Roact.mount(
		Roact.createElement(StoryView, {}, {
			FocusContainer = Roact.createElement(FocusContainer, {}, {
				Story = Roact.createElement(ContextualMenuOverviewComponent),
			}),
		}),
		target,
		"ContextualMenu"
	)

	return function()
		Roact.unmount(handle)
	end
end
