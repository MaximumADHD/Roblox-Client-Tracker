--[[
	Represents a TextBox that shows a dropdown based on a filter.

	Props:
		<Passes props through to the TextBox component>

		bool ClearTextOnFocus = Whether to clear the TextBox text when it is focused.
		string Items = A list of items to filter.
		int MaxItems = The maximum number of items to render in the selection dropdown.

		function OnItemClicked(string text) = A function for when the user submits
			text by selecting an item from the menu.
		function FocusChanged(rbx, focused, submitted) = A function for when the TextBox
			changes focus (passed through to the TextBox component).
]]

local SCROLLBAR_PADDING = 2
local SCROLLBAR_THICKNESS = 10

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Cryo = require(Plugin.Packages.Cryo)
local Framework = require(Plugin.Packages.Framework)
local DropdownMenu = Framework.UI.DropdownMenu
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local TextBox = require(Plugin.Src.Components.TextBox)
local GetFFlagExtendPluginTheme = require(Plugin.LuaFlags.GetFFlagExtendPluginTheme)

local FilteringTextBox = Roact.PureComponent:extend("FilteringTextBox")

function FilteringTextBox:init(initialProps)
	self.state = {
		hoveredItem = nil,
		currentText = initialProps.Text or "",
	}
	self.frameRef = Roact.createRef()

	self.onItemClicked = function(item)
		self.props.OnItemClicked(item)
	end

	self.onItemMouseEnter = function(item)
		self:setState({
			hoveredItem = item,
		})
	end

	self.onItemMouseLeave = function(item)
		if self.state.hoveredItem == item then
			self:setState({
				hoveredItem = Roact.None,
			})
		end
	end

	self.updateText = function(text)
		self:setState({
			currentText = text,
		})
	end

	self.onFocusChanged = function(rbx, focused, submitted)
		if submitted or self.state.hoveredItem == nil then
			self.props.FocusChanged(rbx, focused, submitted)
		end
		self.updateText(rbx.Text)
	end
end

function FilteringTextBox:render()
	local props = self.props
	local theme = GetFFlagExtendPluginTheme() and props.Stylizer or props.Stylizer.PluginTheme
	local dropdownTheme = theme.dropdownTheme

	local state = self.state

	local frameRef = self.frameRef and self.frameRef.current
	local frameExtents
	if frameRef then
		local frameMin = frameRef.AbsolutePosition
		local frameSize = frameRef.AbsoluteSize
		local frameMax = frameMin + frameSize
		frameExtents = Rect.new(frameMin.X, frameMin.Y, frameMax.X, frameMax.Y)
	end

	local items = props.Items or {}
	local size = props.Size
	local position = props.Position
	local maxItems = props.MaxItems
	local currentText = state.currentText
	local hoveredItem = state.hoveredItem

	local filteredItems = Cryo.List.filter(items, function(item)
		return string.find(item, currentText) ~= nil
	end)

	return Roact.createElement("Frame", {
		Size = size,
		Position = position,
		BackgroundTransparency = 1,
		[Roact.Ref] = self.frameRef,
	}, {
		TextBox = Roact.createElement(TextBox, Cryo.Dictionary.join(props, {
			Size = UDim2.new(1, 0, 1, 0),
			FocusChanged = self.onFocusChanged,
			TextChanged = self.updateText,
		})),

		Dropdown = #filteredItems > 0 and frameRef and Roact.createElement(DropdownMenu, {
			OnItemClicked = self.onItemClicked,
			OnFocusLost = self.hideDropdown,
			SourceExtents = frameExtents,
			MaxHeight = maxItems and dropdownTheme.itemHeight * maxItems or nil,
			ShowBorder = true,
			ScrollBarPadding = SCROLLBAR_PADDING,
			ScrollBarThickness = SCROLLBAR_THICKNESS,
			Items = filteredItems,
			RenderItem = function(item, index, activated)
				return Roact.createElement("TextButton", {
					Size = UDim2.new(0, frameExtents.Width, 0, 22),
					Font = theme.font,
					TextSize = dropdownTheme.textSize,
					Text = item,
					TextTruncate = Enum.TextTruncate.AtEnd,
					TextXAlignment = Enum.TextXAlignment.Left,
					TextColor3 = dropdownTheme.textColor,
					BackgroundColor3 = hoveredItem == item and dropdownTheme.hoveredItemColor
						or dropdownTheme.itemColor,
					BorderSizePixel = 0,
					AutoButtonColor = false,

					[Roact.Event.Activated] = activated,
					[Roact.Event.MouseEnter] = function()
						self.onItemMouseEnter(item)
					end,
					[Roact.Event.MouseLeave] = function()
						self.onItemMouseLeave(item)
					end,
				}, {
					Padding = Roact.createElement("UIPadding", {
						PaddingLeft = UDim.new(0, 5),
					}),
				})
			end,
		}),
	})
end

FilteringTextBox = withContext({
	Stylizer = ContextServices.Stylizer,
})(FilteringTextBox)

return FilteringTextBox