local CorePackages = game:GetService("CorePackages")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local UIBlox = InGameMenuDependencies.UIBlox
local t = InGameMenuDependencies.t

local withStyle = UIBlox.Core.Style.withStyle

local InGameMenu = script.Parent.Parent

local Assets = require(InGameMenu.Resources.Assets)
local divideTransparency = require(InGameMenu.Utility.divideTransparency)

local ThemedButton = require(script.Parent.ThemedButton)
local ThemedTextLabel = require(script.Parent.ThemedTextLabel)
local Divider = require(script.Parent.Divider)
local BarOnTopScrollingFrame = require(script.Parent.BarOnTopScrollingFrame)

local withLocalization = require(InGameMenu.Localization.withLocalization)

local ImageSetLabel = UIBlox.Core.ImageSet.Label

local DropDownSelection = Roact.PureComponent:extend("DropDownSelection")

local DROP_DOWN_BORDER_SIZE = 4
local MAX_ITEMS_DISPLAYED = 7.5
local ITEM_HEIGHT = 44

DropDownSelection.validateProps = t.intersection(t.strictInterface({
	Size = t.UDim2,
	Position = t.optional(t.UDim2),
	LayoutOrder = t.optional(t.integer),

	placeHolderText = t.optional(t.string),
	selectedIndex = t.integer, --0 if placeholder is selected
	selections = t.array(t.string),
	localize = t.boolean,
	enabled = t.boolean,
	selectionChanged = t.callback,
}), function(props)
	if props.selectedIndex < 0 then
		return false, "selectedIndex must be greater than 0"
	end

	if props.selectedIndex > #props.selections then
		return false, "selectedIndex must not be greater than the number of selections"
	end

	return true
end)

function DropDownSelection:init()
	self.rootRef = Roact.createRef()

	self.state = {
		isOpen = false,
		dropDownItemHeight = 10,
		absolutePositionX = 0,
		absolutePositionY = 0,

		screenSizeX = 0,
		screenSizeY = 0,
	}

	self.ancestryConnection = nil
	self.sizeConnection = nil
end

function DropDownSelection:renderDropDownList(style, localized)
	local dropDownList = {}
	dropDownList.Layout = Roact.createElement("UIListLayout", {
		FillDirection = Enum.FillDirection.Vertical,
		HorizontalAlignment = Enum.HorizontalAlignment.Center,
		SortOrder = Enum.SortOrder.LayoutOrder,
	})

	for index, dropDownOption in ipairs(self.props.selections) do
		local buttonText = dropDownOption
		if self.props.localize then
			buttonText = localized[index]
		end

		dropDownList["button" .. index] = Roact.createElement(ThemedButton, {
			Size = UDim2.new(1, 0, 0, self.state.dropDownItemHeight - 1),
			LayoutOrder = index * 2,
			onActivated = function()
				self:setState({
					isOpen = false,
				})
				self.props.selectionChanged(index)
			end,
			normalThemeKey = "BackgroundUIDefault",
			hoverThemeKey = "BackgroundOnHover",

			imageProps = Assets.Images.WhiteSquare,

			renderChildren = function(transparency, isHovered, isPressed)
				local iconColor = isHovered and style.Theme.IconOnHover or style.Theme.IconDefault
				local iconColor3 = iconColor.Color
				local iconTransparency = divideTransparency(iconColor.Transparency, isPressed and 2 or 1)

				return {
					SelectedIcon = Roact.createElement(ImageSetLabel, {
						BackgroundTransparency = 1,
						AnchorPoint = Vector2.new(1, 0.5),
						Size = UDim2.new(0, 15, 0, 12),
						Position = UDim2.new(1, -25, 0.5, 0),
						Image = Assets.Images.SelectedCheck,
						ImageColor3 = iconColor3,
						ImageTransparency = iconTransparency,
						Visible = self.props.selectedIndex == index
					}),

					TextLabel = Roact.createElement(ThemedTextLabel, {
						fontKey = "Header2",
						themeKey = "TextEmphasis",

						Position = UDim2.new(0, 25, 0, 0),
						Size = UDim2.new(1, -25, 1, 0),
						Text = buttonText,
						TextXAlignment = Enum.TextXAlignment.Left,
					}),
				}
			end,
		})

		if index < #self.props.selections then
			dropDownList["divider" .. index] = Roact.createElement(Divider, {
				LayoutOrder = index * 2 + 1
			})
		end
	end
	return dropDownList
end

function DropDownSelection:render()
	return withStyle(function(style)
		return withLocalization(
			self.props.localize and self.props.selections or {}
		)(function(localized)
			local dropDownOpenText = self.props.placeHolderText
			if self.props.selectedIndex > 0 then
				if self.props.localize then
					dropDownOpenText = localized[self.props.selectedIndex]
				else
					dropDownOpenText = self.props.selections[self.props.selectedIndex]
				end
			end

			local shadowSize = Assets.Images.Shadow.Size
			local itemSize = math.min(#self.props.selections, MAX_ITEMS_DISPLAYED) * ITEM_HEIGHT
			local dropDownList = self:renderDropDownList(style, localized)

			return Roact.createElement("Frame", {
				Size = self.props.Size,
				Position = self.props.Position,
				LayoutOrder = self.props.LayoutOrder,
				BackgroundTransparency = 1,

				[Roact.Ref] = self.rootRef,

				[Roact.Change.AbsoluteSize] = function(rbx)
					self:setState({
						dropDownItemHeight = rbx.AbsoluteSize.Y,
					})
				end,

				[Roact.Change.AbsolutePosition] = function(rbx)
					self:setState({
						absolutePositionX = rbx.AbsolutePosition.X,
						absolutePositionY = rbx.AbsolutePosition.Y,
					})
				end,
			}, {
				OpenDropDownButton = Roact.createElement(ThemedButton, {
					Size = UDim2.new(1, 0, 1, 0),
					Visible = not self.state.isOpen,
					enabled = self.props.enabled,
					onActivated = function()
						self:setState({
							isOpen = true,
						})
					end,
					normalThemeKey = "SecondaryDefault",
					hoverThemeKey = "SecondaryOnHover",
					imageProps = Assets.Images.RoundedRectBorder,
					renderChildren = function(transparency, isHovered, isPressed)
						local iconColor = isHovered and style.Theme.IconOnHover or style.Theme.IconDefault
						local iconColor3 = iconColor.Color
						local iconTransparency = divideTransparency(iconColor.Transparency, isPressed and 2 or 1)

						return {
							ButtonIcon = Roact.createElement(ImageSetLabel, {
								BackgroundTransparency = 1,
								Size = UDim2.new(0, 36, 0, 36),
								Position = UDim2.new(1, -16, 0.5, 0),
								AnchorPoint = Vector2.new(1, 0.5),
								Image = Assets.Images.ExpandArrow,
								ImageColor3 = iconColor3,
								ImageTransparency = iconTransparency,
							}),
							ButtonText = Roact.createElement(ThemedTextLabel, {
								Text = dropDownOpenText,
								themeKey = "SecondaryContent",
								fontKey = "Header2",
								Position = UDim2.new(0, 12, 0, 0),
								Size = UDim2.new(1, -12, 1, 0),
								TextTransparency = transparency,
								TextXAlignment = Enum.TextXAlignment.Left,
							}),
						}
					end,
				}),

				CloseDropDownArea = Roact.createElement("TextButton", {
					BackgroundTransparency = 1,
					Text = "",
					Position = UDim2.new(0, -self.state.absolutePositionX, 0, -self.state.absolutePositionY),
					Size = UDim2.new(0, self.state.screenSizeX, 0, self.state.screenSizeY),
					Visible = self.state.isOpen,

					[Roact.Event.Activated] = function()
						self:setState({
							isOpen = false,
						})
					end,
					ZIndex = 2,
				}),

				DropDownShadow = Roact.createElement(ImageSetLabel, {
					BackgroundTransparency = 1,
					Image = Assets.Images.Shadow.Image,
					Position = UDim2.new(0, -shadowSize, 0, -shadowSize),
					Size = UDim2.new(1, shadowSize * 2, 0, shadowSize * 2 + DROP_DOWN_BORDER_SIZE * 2 + itemSize),
					ScaleType = Assets.Images.Shadow.ScaleType,
					SliceCenter = Assets.Images.Shadow.SliceCenter,
					Visible = self.state.isOpen,
					ZIndex = 3,
				}, {
					DropDownBackground = Roact.createElement(ImageSetLabel, {
						BackgroundTransparency = 1,
						Image = Assets.Images.RoundedRect.Image,
						ImageColor3 = style.Theme.BackgroundUIDefault.Color,
						ImageTransparency = style.Theme.BackgroundUIDefault.Transparency,
						ScaleType = Assets.Images.RoundedRect.ScaleType,
						Size = UDim2.new(1, -(shadowSize * 2), 1, -(shadowSize * 2)),
						Position = UDim2.new(0.5, 0, 0.5, 0),
						AnchorPoint = Vector2.new(0.5, 0.5),
						SliceCenter = Assets.Images.RoundedRect.SliceCenter,
						SliceScale = 0.5,
					}, {
						DropDownList = Roact.createElement(BarOnTopScrollingFrame, {
							Position = UDim2.new(0, 0, 0, DROP_DOWN_BORDER_SIZE),
							Size = UDim2.new(1, 0, 1, -DROP_DOWN_BORDER_SIZE * 2),
							CanvasSize = UDim2.new(1, 0, 0, #self.props.selections * self.state.dropDownItemHeight),
							scrollBarOffset = 4,
						}, dropDownList),
					}),
				}),
			})
		end)
	end)
end

function DropDownSelection:watchLayerCollector(layerCollector)
	self:setState({
		screenSizeX = layerCollector.AbsoluteSize.X,
		screenSizeY = layerCollector.AbsoluteSize.Y,
	})

	self.sizeConnection = layerCollector:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
		self:setState({
			screenSizeX = layerCollector.AbsoluteSize.X,
			screenSizeY = layerCollector.AbsoluteSize.Y,
		})
	end)
end

function DropDownSelection:didMount()
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

function DropDownSelection:willUnmount()
	if self.ancestryConnection then
		self.ancestryConnection:Disconnect()
	end
	if self.sizeConnection then
		self.sizeConnection:Disconnect()
	end
end

return DropDownSelection