--[[
	(INTERNAL ONLY)
	PLEASE USE SelectInput for any dropdown component.
	A generic dropdown menu interface which can accept any kind of components.
	This dropdown detects if it is too close to the corners of the gui and realigns if needed.
	For example, if it is too close to the bottom of the gui to render all elements, it
	renders its elements above the hosting button instead of below.

	Required Props:
		boolean Hide: Whether the menu is hidden
		table Items: An array of each item that should appear in the dropdown.
		callback OnItemActivated: A callback for when the user selects a dropdown entry.
		Focus Focus: a Focus object supplied by withContext()

	Optional Props:
		number Width: The width of the dropdown
		boolean UseAutoWidth: Whether the dropdown's width should be based on the width of its items.
		string PlaceholderText: A placeholder to display if there is no item selected.
		number Priority: The ZIndex of this component relative to other focused elements.
		callback OnRenderItem: A function used to render a dropdown menu item.
		callback OnFocusLost: A function called when the focus on the menu is lost.
		callback OnMouseEnter: A function that is called when the mouse hovers over the dropdown.
		callback OnMouseLeave: A function that is called leaves the dropdown.
		Stylizer Stylizer: A Stylizer ContextItem, which is provided via withContext.
		Style Style: The style with which to render this component.
		number MaxHeight: The maximum height of the menu area (defaults to style if not provided)
		table Icons: A table containing icons to render, only used if OnRenderItem is not utilized.
		number ItemHeight: The height of each item in dropdown.
		number HoveredItemIndex: The index of currently hovered item.
		callback OnHoveredItemChanged: When the index of the hovered item changes.
		boolean TextWrapped: Whether the text label should wrap.
		string Variant: An optional parameter to determine the look of the component. 'modern'
		boolean DropFromSide: Whether the dropdown flies out to the side of the component.

	Style Values:
		Style BackgroundStyle: The style with which to render the background.
		Vector2 Offset: The offset the menu appears from the input component.
		Color3 BackgroundColor: The background color of the dropdown menu.
		number Width: The width of the menu area.
		number MaxHeight: The maximum height of the menu area.
		number ItemHeight: The height of each item in dropdown.
]]
-- TODO: sworzalla Remove OnMouseEnter/OnMouseLeave props once interaction layers have been implemented/fixed
local Framework = script:FindFirstAncestor("UI").Parent
local Roact = require(Framework.Parent.Roact)
local ContextServices = require(Framework.UI.ContextServices)
local withContext = ContextServices.withContext

local React = if Framework.Parent:FindFirstChild("React") then require(Framework.Parent.React) else nil
local supportsStyleSheets = require(Framework.Styling.supportsStyleSheets)

local SharedFlags = require(Framework.SharedFlags)
local FFlagDevFrameworkDropdownMenuHeight = SharedFlags.getFFlagDevFrameworkDropdownMenuHeight()

local FFlagDevFrameworkLimitDropdownHeight = game:DefineFastFlag("DevFrameworkLimitDropdownHeight", false)
local FFlagDevFrameworkDropdownItemDisabled = SharedFlags.getFFlagDevFrameworkDropdownItemDisabled()

local Util = require(Framework.Util)
local prioritize = Util.prioritize
local StyleModifier = Util.StyleModifier
local Typecheck = require(Framework.Util.Typecheck)

local Dash = require(Framework.Parent.Dash)
local join = Dash.join

local UI = Framework.UI
local Container = require(UI.Components.Container)
local CaptureFocus = require(UI.Components.CaptureFocus)
local Image = require(UI.Components.Image)
local ScrollingFrame = require(UI.Components.ScrollingFrame)
local Button = require(UI.Components.DEPRECATED_Button)
local Pane = require(UI.Components.Pane)
local RoundBox = require(UI.Components.RoundBox)
local TextLabel = require(UI.Components.TextLabel)

local DropdownMenu = Roact.PureComponent:extend("DropdownMenu")
Typecheck.wrap(DropdownMenu, script)

local DEFAULT_BORDER_SIZE = 1

function DropdownMenu:init()
	self.ref = Roact.createRef()

	self.state = {
		absoluteSize = Vector2.new(0, 0),
		menuContentSize = Vector2.new(0, 0),
	}

	self.recalculateContentSize = function(uiLayout)
		local ref = self.ref.current
		if ref ~= nil then
			self:setState({
				menuContentSize = uiLayout.AbsoluteContentSize,
				absolutePosition = ref.AbsolutePosition,
				absoluteSize = ref.AbsoluteSize,
			})
		else
			self:setState({
				menuContentSize = uiLayout.AbsoluteContentSize,
			})
		end
	end

	self.reposition = function()
		local ref = self.ref.current
		if ref ~= nil then
			self:setState({
				absolutePosition = ref.AbsolutePosition,
				absoluteSize = ref.AbsoluteSize,
			})
		end
	end

	self.getPositionAndSize = function(pluginGui: PluginGui, width: number, offset: Vector2)
		local state = self.state
		local props = self.props

		-- calculate the size and position of the dropdown
		local height = state.menuContentSize.Y

		local style = props.Stylizer

		local maxHeight = prioritize(props.MaxHeight, style.MaxHeight)

		local sourcePosition = Vector2.new()
		local parentAbsoluteSize = Vector2.new()
		if self.ref.current then
			sourcePosition = self.ref.current.Parent.AbsolutePosition
			parentAbsoluteSize = self.ref.current.Parent.AbsoluteSize
		end

		local sourceSize = state.absoluteSize
		local guiSize = pluginGui.AbsoluteSize
		local guiPosition = pluginGui.AbsolutePosition

		local xPos, yPos
		local shouldAlignToSide = props.DropFromSide
		local fitsAlignedRight = sourcePosition.X + offset.X + width + (if shouldAlignToSide then sourceSize.X else 0)
			<= guiSize.X
		if fitsAlignedRight then
			xPos = sourcePosition.X + offset.X + (if shouldAlignToSide then sourceSize.X else 0)
		else
			xPos = sourcePosition.X + (if shouldAlignToSide then 0 else sourceSize.X) + offset.X - width
		end

		local enoughRoomOnBottom = sourcePosition.Y
				+ (if shouldAlignToSide then 0 else parentAbsoluteSize.Y)
				+ offset.Y
				+ math.min(height, maxHeight)
			< guiSize.Y
		local enoughRoomOnTop = sourcePosition.Y
				- offset.Y
				- maxHeight
				+ (if shouldAlignToSide then parentAbsoluteSize.Y else 0)
			> 0
		-- Don't flip if there is not enough room on either side. This will just cause a spasm of
		-- flip-flopping every render
		local direction = Enum.VerticalAlignment.Bottom
		if enoughRoomOnBottom or enoughRoomOnTop then
			if not enoughRoomOnBottom then
				direction = Enum.VerticalAlignment.Top
			end
		end

		local verticalAlignment
		if direction == Enum.VerticalAlignment.Bottom then
			yPos = sourcePosition.Y + (if shouldAlignToSide then 0 else parentAbsoluteSize.Y) + offset.Y
			verticalAlignment = Enum.VerticalAlignment.Top
		else
			local heightToSubtract = math.min(height, maxHeight)
			yPos = sourcePosition.Y
				- offset.Y
				- heightToSubtract
				+ (if shouldAlignToSide then parentAbsoluteSize.Y else 0)
			verticalAlignment = Enum.VerticalAlignment.Bottom
		end

		yPos -= guiPosition.Y
		xPos -= guiPosition.X

		if FFlagDevFrameworkLimitDropdownHeight then
			if guiSize.Y - yPos < maxHeight then
				maxHeight = guiSize.Y - yPos
			end
		else
			if guiSize.Y - yPos < height then
				maxHeight = guiSize.Y - yPos
			end
		end

		local needsScrollingFrame = height > maxHeight

		return {
			X = xPos,
			Y = yPos,
			Height = math.min(height, maxHeight),
			NeedsScrollingFrame = needsScrollingFrame,
			VerticalAlignment = verticalAlignment,
		}
	end
	self.changeTokens = {}

	if FFlagDevFrameworkDropdownMenuHeight then
		self.onInputBegan = function(_rbx, input)
			local props = self.props
			local index = props.HoveredItemIndex
			if input.KeyCode == Enum.KeyCode.Down then
				props.OnHoveredItemChanged(math.min(#props.Items, index + 1))
			elseif input.KeyCode == Enum.KeyCode.Up then
				props.OnHoveredItemChanged(math.max(1, index - 1))
			elseif input.KeyCode == Enum.KeyCode.Return then
				props.OnItemActivated(props.Items[index])
				if props.OnFocusLost then
					props.OnFocusLost()
				end
			end
		end
	end

	self.defaultOnRenderItem = function(item, index: number, activated: () -> nil, hovered: boolean)
		local props = self.props
		local icons = props.Icons

		local style = props.Stylizer
		local isModern = props.Variant == "modern"

		local itemHeight = prioritize(props.ItemHeight, style.ItemHeight, 40)

		local itemText = item
		local icon = if icons then icons[index] else nil
		local imageStyle
		local isDisabled = false
		if typeof(item) == "table" then
			itemText = item.Label
			if item.Icon then
				icon = item.Icon
			end
			if FFlagDevFrameworkDropdownItemDisabled then
				isDisabled = item.Disabled == true
			end
		else
			imageStyle = {
				Image = icon,
			}
		end

		local textLabelTags = if supportsStyleSheets and isModern then "BuilderSans Muted" else ""
		if FFlagDevFrameworkDropdownItemDisabled and isDisabled then
			textLabelTags = textLabelTags .. " Disabled"
		end

		return Roact.createElement(Button, {
			LayoutOrder = index,
			OnClick = if FFlagDevFrameworkDropdownItemDisabled and isDisabled then function() end else activated,
			OnMouseEnter = if FFlagDevFrameworkDropdownMenuHeight
				then function()
					if props.OnHoveredItemChanged then
						props.OnHoveredItemChanged(index)
					end
				end
				else nil,
			Size = UDim2.new(1, 0, 0, itemHeight),
			StyleModifier = if FFlagDevFrameworkDropdownMenuHeight and hovered then StyleModifier.Hover else nil,
			Style = if isModern then "ModernDropdown" else nil,
		}, {
			ImageContainer = if icon
				then Roact.createElement(Pane, {
					LayoutOrder = 1,
					Size = UDim2.fromOffset(itemHeight, itemHeight),
				}, {
					Image = Roact.createElement(
						Image,
						join({
							AnchorPoint = Vector2.new(0.5, 0.5),
							Position = UDim2.fromScale(0.5, 0.5),
							Size = UDim2.fromOffset(16, 16),
							Style = imageStyle,
						}, if typeof(icon) == "table" then icon else nil)
					),
				})
				else nil,
			Label = Roact.createElement(
				TextLabel,
				Dash.join({
					LayoutOrder = 2,
					Size = UDim2.new(1, if icon then -itemHeight else 0, 1, 0),
					Text = itemText,
					TextTruncate = Enum.TextTruncate.AtEnd,
					TextXAlignment = Enum.TextXAlignment.Left,
					TextWrapped = self.props.TextWrapped,
				}, if textLabelTags ~= "" then { [React.Tag] = textLabelTags } else {}),
				{
					Padding = Roact.createElement("UIPadding", {
						PaddingLeft = UDim.new(0, if icon then 40 else 10),
					}),
				}
			),
		})
	end
end

function DropdownMenu:didUpdate()
	local current = self.ref.current
	if not current or self.addedListeners then
		return
	end
	self.addedListeners = true
	local parent = current.Parent
	if parent then
		table.insert(self.changeTokens, parent:GetPropertyChangedSignal("AbsoluteSize"):Connect(self.reposition))
		table.insert(self.changeTokens, parent:GetPropertyChangedSignal("AbsolutePosition"):Connect(self.reposition))
	end
end

function DropdownMenu:willUnmount()
	for _, connection in ipairs(self.changeTokens) do
		connection:Disconnect()
	end
end

function DropdownMenu:renderMenu()
	local state = self.state
	local props = self.props
	local style = props.Stylizer

	local BORDER_SIZE = DEFAULT_BORDER_SIZE
	local isModern = props.Variant == "modern"
	if isModern then
		BORDER_SIZE = 0
	end

	local items = props.Items

	local onRenderItem = prioritize(props.OnRenderItem, self.defaultOnRenderItem)
	local onItemActivated = function(item, index)
		props.OnItemActivated(item, index)
		if props.OnFocusLost then
			props.OnFocusLost()
		end
	end
	local backgroundColor = style.BackgroundColor
	local width = if props.UseAutoWidth then self.state.menuContentSize.X else props.Width or style.Width
	local offset = prioritize(style.Offset, Vector2.new(0, 0))

	local pluginGui = props.Focus:get()

	local menuPositionAndSize = self.getPositionAndSize(pluginGui, width, offset)
	local x = menuPositionAndSize.X
	local y = menuPositionAndSize.Y
	local height = menuPositionAndSize.Height
	local needsScrollingFrame = menuPositionAndSize.NeedsScrollingFrame
	local verticalAlignment = menuPositionAndSize.VerticalAlignment

	local listElements = {
		Layout = Roact.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
			FillDirection = Enum.FillDirection.Vertical,
			VerticalAlignment = verticalAlignment,
			[Roact.Change.AbsoluteContentSize] = self.recalculateContentSize,
		}),
	}

	for index, item in ipairs(items) do
		listElements[tostring(index)] = onRenderItem(item, index, function()
			onItemActivated(item, index)
		end, if FFlagDevFrameworkDropdownMenuHeight then index == props.HoveredItemIndex else nil)
	end

	local children = {
		UIStroke = if isModern
			then Roact.createElement("UIStroke", {
				ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
				Color = style.StrokeColor,
				Thickness = style.StrokeThickness,
			})
			else nil,
		UICorner = if isModern
			then Roact.createElement("UICorner", {
				CornerRadius = style.CornerRadius,
			})
			else nil,
		ScrollingContainer = if needsScrollingFrame
			then Roact.createElement(
				ScrollingFrame,
				Dash.join({
					AutoSizeCanvas = false,
					-- These are needed because container lays out children relative to its outer size, not its inner size
					Size = UDim2.new(1, -BORDER_SIZE * 2, 1, -BORDER_SIZE * 2),
					AutomaticSize = if props.UseAutoWidth then Enum.AutomaticSize.X else nil,
					Position = UDim2.fromOffset(BORDER_SIZE, BORDER_SIZE),
					CanvasSize = UDim2.fromOffset(state.menuContentSize.X, state.menuContentSize.Y),
				}, if supportsStyleSheets and isModern then { [React.Tag] = "modern" } else nil),
				listElements
			)
			else nil,

		Container = if needsScrollingFrame
			then nil
			else Roact.createElement("Frame", {
				BorderSizePixel = 0,
				-- These are needed because container lays out children relative to its outer size, not its inner size
				Size = UDim2.new(1, -BORDER_SIZE * 2, 1, -BORDER_SIZE * 2),
				AutomaticSize = if props.UseAutoWidth then Enum.AutomaticSize.X else nil,
				Position = UDim2.fromOffset(BORDER_SIZE, BORDER_SIZE),
				BackgroundColor3 = backgroundColor,
				BackgroundTransparency = if isModern then 1 else 0,
			}, listElements),

		HoverDetector = Roact.createElement("TextButton", {
			BackgroundTransparency = 1,
			Size = UDim2.new(1, -BORDER_SIZE * 2, 1, -BORDER_SIZE * 2),
			Position = UDim2.fromOffset(BORDER_SIZE, BORDER_SIZE),
			TextTransparency = 1,
			ZIndex = -1,
			[Roact.Event.InputBegan] = if FFlagDevFrameworkDropdownMenuHeight then self.onInputBegan else nil,
			[Roact.Event.MouseEnter] = props.OnMouseEnter,
			[Roact.Event.MouseLeave] = props.OnMouseLeave,
		}),
	}
	if isModern then
		return Roact.createElement("CanvasGroup", {
			Position = UDim2.fromOffset(x, y),
			Size = UDim2.fromOffset(width, height + BORDER_SIZE * 2),
			BackgroundColor3 = backgroundColor,
			BackgroundTransparency = 0,
		}, children)
	else
		return Roact.createElement(Container, {
			Position = UDim2.fromOffset(x, y),
			Size = UDim2.fromOffset(width, height + BORDER_SIZE * 2),
			Background = RoundBox,
			BackgroundStyle = style.BackgroundStyle,
		}, children)
	end
end

function DropdownMenu:render()
	local props = self.props

	local isOpen = not props.Hide
	local priority = props.Priority

	return Roact.createElement(Container, {
		[Roact.Ref] = self.ref,
		Size = UDim2.fromScale(1, 0),
	}, {
		PortalToRoot = isOpen and Roact.createElement(CaptureFocus, {
			OnFocusLost = props.OnFocusLost,
			Priority = priority,
		}, {
			Menu = isOpen and self:renderMenu(),
		}),
	})
end

DropdownMenu = withContext({
	Focus = ContextServices.Focus,
	Stylizer = ContextServices.Stylizer,
})(DropdownMenu)

return DropdownMenu
