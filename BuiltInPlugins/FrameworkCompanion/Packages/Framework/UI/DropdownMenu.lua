--[[
	A generic dropdown menu interface which can accept any kind of components.
	This dropdown detects if it is too close to the corners of the gui and realigns if needed.
	For example, if it is too close to the bottom of the gui to render all elements, it
	renders its elements above the hosting button instead of below.

	Required Props:
		boolean ShouldShow: a toggle that shows the menu when true.
		table Items: An array of each item that should appear in the dropdown.
		UDim2 Size: The size of the window to render elements into.
		callback OnRenderItem: A function used to render a dropdown item.
		callback OnItemActivated: A callback for when the user selects a dropdown entry.
		callback OnFocusLost: A callback for when the user clicks away from the dropdown without selecting an item.
		Theme Theme: a Theme object supplied by mapToProps()
		Focus Focus: a Focus object supplied by mapToProps()

	Optional Props:
		integer ScrollBarThickness: The horizontal width of the scrollbar.
		boolean ShowBorder: Whether to show a border around the elements in the dropdown.
		Vector2 Offset: An offset from the button which is hosting this dropdown.
		Enum.VerticalAlignment StartDirection: Bottom The direction the DropdownMenu will appear from the parent by default.
		Color3 MenuBackgroundColor: The color of the menu behind the elements.
]]

local Framework = script.Parent.Parent
local Roact = require(Framework.Parent.Roact)
local ContextServices = require(Framework.ContextServices)
local Util = require(Framework.Util)
local prioritize = Util.prioritize
local Typecheck = Util.Typecheck
local UI = Framework.UI
local Container = require(UI.Container)
local CaptureFocus = require(UI.CaptureFocus)
local ScrollingFrame = require(UI.ScrollingFrame)


local DropdownMenu = Roact.PureComponent:extend("DropdownMenu")
Typecheck.wrap(DropdownMenu, script)

function DropdownMenu:init()
	self.selfRef = Roact.createRef()

	self.state = {
		parentAbsolutePosition = Vector2.new(0, 0),
		parentAbsoluteSize = Vector2.new(0, 0),
		menuContentSize = Vector2.new(0, 0),
	}

	self.recalculateContentSize = function(rbx)
		local selfRef = self.selfRef.current
		if selfRef ~= nil then
			local parent = selfRef.Parent
			self:setState({
				menuContentSize = rbx.AbsoluteContentSize,
				parentAbsolutePosition = parent.AbsolutePosition,
				parentAbsoluteSize = parent.AbsoluteSize,
			})
		else
			self:setState({
				menuContentSize = rbx.AbsoluteContentSize,
			})
		end
	end

	self.reposition = function()
		local selfRef = self.selfRef.current
		if selfRef ~= nil then
			local parent = selfRef.Parent
			self:setState({
				parentAbsolutePosition = parent.AbsolutePosition,
				parentAbsoluteSize = parent.AbsoluteSize,
			})
		end
	end

	self.getPositionAndSize = function(pluginGui, size, offset)
		local state = self.state

		-- calculate the size and position of the dropdown
		local width = size.X.Offset
		local height = state.menuContentSize.Y
		local maxHeight = size.Y.Offset

		local sourcePosition = state.parentAbsolutePosition
		local sourceSize = state.parentAbsoluteSize
		local guiSize = pluginGui.AbsoluteSize

		local xPos, yPos = 0, 0
		local fitsAlignedRight = sourcePosition.X + offset.X + width <= guiSize.X
		if fitsAlignedRight then
			xPos = sourcePosition.X + offset.X
		else
			xPos = sourcePosition.X + sourceSize.X + offset.X - width
		end

		local enoughRoomOnBottom = sourcePosition.Y + sourceSize.Y + offset.Y + maxHeight < guiSize.Y
		local enoughRoomOnTop = sourcePosition.Y - offset.Y - maxHeight > 0

		-- Don't flip if there is not enough room on either side. This will just cause a spasm of
		-- flip-flopping every render
		local direction = Enum.VerticalAlignment.Bottom
		if enoughRoomOnBottom or enoughRoomOnTop then
			if direction == Enum.VerticalAlignment.Bottom and not enoughRoomOnBottom then
				direction = Enum.VerticalAlignment.Top
			elseif direction == Enum.VerticalAlignment.Top and not enoughRoomOnTop then
				direction = Enum.VerticalAlignment.Bottom
			end
		end

		-- choose 
		local verticalAlignment
		if direction == Enum.VerticalAlignment.Bottom then
			yPos = sourcePosition.Y + sourceSize.Y + offset.Y
			verticalAlignment = Enum.VerticalAlignment.Top
		else
			yPos = sourcePosition.Y - offset.Y - maxHeight
			verticalAlignment = Enum.VerticalAlignment.Bottom
		end

		local needsScrollingFrame = height > maxHeight

		return {
			X = xPos,
			Y = yPos,
			Width = width,
			Height = maxHeight,
			NeedsScrollingFrame = needsScrollingFrame,
			VerticalAlignment = verticalAlignment,
		}
	end

	self.changeTokens = {}
end

function DropdownMenu:didMount()
	local parent = self.selfRef.current.Parent
	table.insert(self.changeTokens, parent:GetPropertyChangedSignal("AbsoluteSize"):Connect(self.reposition))
	table.insert(self.changeTokens, parent:GetPropertyChangedSignal("AbsolutePosition"):Connect(self.reposition))
end

function DropdownMenu:willUnmount()
	for _, connection in ipairs(self.changeTokens) do
		connection:Disconnect()
	end
end

function DropdownMenu:render()
	local props = self.props
	local state = self.state
	local style = props.Theme:getStyle("Framework", self)
	local pluginGui = props.Focus:getTarget()

	local items = props.Items
	local onRenderItem = prioritize(props.OnRenderItem, style.OnRenderItem)
	local onFocusLost = props.OnFocusLost
	local onItemActivated = props.OnItemActivated
	local shouldShow = props.ShouldShow

	local showBorder = prioritize(props.ShowBorder, style.ShowBorder, false)
	local borderColor = prioritize(props.BorderColor, style.BorderColor)
	local borderImage = style.BorderImage
	local borderSliceCenter = style.BorderSliceCenter
	local menuBackgroundColor = prioritize(props.MenuBackgroundColor, style.MenuBackgroundColor)
	local size = prioritize(props.Size, style.Size, UDim2.new(0, 100, 0, 100))
	local offset = prioritize(props.Offset, style.Offset, Vector2.new(0, 0))
	local scrollBarThickness = prioritize(props.ScrollBarThickness, style.ScrollBarThickness)

	local canRender = state.parentAbsolutePosition ~= Vector2.new(0, 0)

	local menuPositionAndSize = self.getPositionAndSize(pluginGui, size, offset)
	local x = menuPositionAndSize.X
	local y = menuPositionAndSize.Y
	local width = menuPositionAndSize.Width
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
		end)
	end

	-- render an anchor element to be able to get a reference to the parent
	return Roact.createElement(Container, {
		Size = UDim2.new(0, 0, 0, 0),
		[Roact.Ref] = self.selfRef,
	}, {
		PortalToRoot = shouldShow and Roact.createElement(CaptureFocus, {
			OnFocusLost = onFocusLost,
		}, {
			Menu = Roact.createElement(Container, {
				Visible = canRender,
				Position = UDim2.fromOffset(x, y),
				Size = UDim2.fromOffset(width, height),
				ZIndex = 3,				
			}, {
				Border = showBorder and Roact.createElement("ImageLabel", {
					Size = UDim2.fromScale(1, 1),
					ZIndex = 4,
					BackgroundTransparency = 1,
					ImageColor3 = borderColor,
					Image = borderImage,
					ScaleType = Enum.ScaleType.Slice,
					SliceCenter = borderSliceCenter,
				}),

				ScrollingContainer = needsScrollingFrame and Roact.createElement(ScrollingFrame, {
					AutoSizeCanvas = false,
					CanvasSize = UDim2.fromOffset(state.menuContentSize.X, state.menuContentSize.Y),
					ScrollBarThickness = scrollBarThickness,
					BackgroundColor3 = menuBackgroundColor,
				}, listElements),

				Container = (needsScrollingFrame == false) and Roact.createElement("Frame", {
					BorderSizePixel = 0,
					Size = UDim2.fromScale(1, 1),
					BackgroundColor3 = menuBackgroundColor,
				}, listElements),
			})
		})
	})
end

ContextServices.mapToProps(DropdownMenu, {
	Focus = ContextServices.Focus,
	Theme = ContextServices.Theme,
})

return DropdownMenu
