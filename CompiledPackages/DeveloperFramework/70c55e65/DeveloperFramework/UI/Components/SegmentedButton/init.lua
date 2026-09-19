--[[
	A segmented button that allows for choosing an option without the need for a dropdown

	Required Props:
        table Items: The items which can be selected
        callback OnItemActivated: The callback that is called when an item is selected

	Optional Props:
		table ButtonWidths: A table of ButtonWidths in percentages
		StyleModifier StyleModifier: The StyleModifier index into Style
		UDim2 Size: The size of this component
		UDim2 IconSize: The size of the icons
		number LayoutOrder: The layout order of this component in a list
        string SelectedId: The id of the item which is currently selected
        number SelectedIndex: The item which is currently selected
]]
local Framework = script:FindFirstAncestor("UI").Parent
local Roact = require(Framework.Parent.Roact)
local ContextServices = require(Framework.UI.ContextServices)
local withContext = ContextServices.withContext

local Button = require(Framework.UI.Components.DEPRECATED_Button)
local Pane = require(Framework.UI.Components.Pane)
local Separator = require(Framework.UI.Components.Separator)

local LayoutOrderIterator = require(Framework.Util.LayoutOrderIterator)

-- Stylizer has flaky errors when accessed from methods defined in init. There
-- currently is no better solution than to check for Style directly if Stylizer
-- was not set due to a flaky error.
local Style = require(script.style)

local TextService = game:GetService("TextService")

local SegmentedButton = Roact.PureComponent:extend("SegmentedButton")

function SegmentedButton:init()
	self.evaluateMinimums = function(component)
		local style = self.props.Stylizer or Style
		local width = component.AbsoluteSize.X - #self.props.Items + 1
		local autosizedItems = #self.props.Items

		self.iconSize = component.AbsoluteSize.Y
		local textPadding = style.TextPadding

		local buttonWidth = width / autosizedItems

		local items = table.clone(self.props.Items)
		local sizes = table.clone(self.state.sizes)

		while true do
			local resizedItems = {}

			for index, item in items do
				local button = self.refs[index].current

				if not button then
					break
				end

				local iconWidth = 0
				if
					button:FindFirstChild("Container")
					and button.Container:FindFirstChild("Layout")
					and button.Container:FindFirstChild("ImageContainer")
					and button.Container.ImageContainer:FindFirstChild("Image")
				then
					iconWidth = button.Container.Layout.Padding.Offset
						+ button.Container.ImageContainer.Image.AbsoluteSize.X
				end

				local textWidth = if item.Label
					then TextService:GetTextSize(
						item.Label,
						button:GetStyled("TextSize"),
						button:GetStyled("Font"),
						Vector2.new(math.huge, math.huge)
					).X + (2 * textPadding)
					else 0
				local totalWidth = textWidth + iconWidth

				if totalWidth > buttonWidth then
					sizes[index] = UDim2.new(0, totalWidth, 1, 0)
					width -= totalWidth
					autosizedItems -= 1

					buttonWidth = width / autosizedItems
					table.insert(resizedItems, index)
				else
					sizes[index] = UDim2.new(0, buttonWidth, 1, 0)
				end
			end

			for _, index in resizedItems do
				items[index] = nil
			end

			if #resizedItems == 0 then
				break
			end
		end

		self:setState({
			sizes = sizes,
		})
	end

	self.refs = {}
	self.ref = Roact.createRef()

	self.state = {
		sizes = {},
	}
end

function SegmentedButton:didMount()
	self.evaluateMinimums(self.ref.current)
end

function SegmentedButton:didUpdate(prevProps)
	if self.props.Items ~= prevProps.Items then
		self.evaluateMinimums(self.ref.current)
	end
end

function SegmentedButton:render()
	local props = self.props

	local items = props.Items
	local layoutOrder = props.LayoutOrder
	local selectedIndex = props.SelectedIndex
	if props.SelectedId ~= nil then
		for i, item in items do
			if typeof(item) == "table" and item.Id == props.SelectedId then
				selectedIndex = i
				break
			end
		end
	end

	local size = props.Size
	local styleModifier = props.StyleModifier

	local layoutOrderIterator = LayoutOrderIterator.new()

	local button = {}

	assert(#items > 1, "Segmented Button should contain more than one item")

	for index, item in props.Items do
		local useId = typeof(item) == "table"
		local key = if useId then item.Id else item
		local label = if useId then item.Label else item
		local icon = if useId then item.Icon else nil
		if not self.refs[index] then
			self.refs[index] = Roact.createRef()
		end

		if index == 1 then
			button[key] = Roact.createElement(Button, {
				[Roact.Ref] = self.refs[index],
				Icon = icon,
				LayoutOrder = layoutOrderIterator:getNextOrder(),
				OnClick = function()
					props.OnItemActivated(if useId then item else index)
				end,
				Size = self.state.sizes[index] or UDim2.new(1 / #items, -1, 1, 0),
				Style = if selectedIndex == index then "RoundLeftActive" else "RoundLeft",
				StyleModifier = styleModifier,
				Text = label,
			})
			button[key .. "Separator"] = Roact.createElement(Separator, {
				DominantAxis = Enum.DominantAxis.Height,
				LayoutOrder = layoutOrderIterator:getNextOrder(),
			})
		elseif index == #items then
			button[key] = Roact.createElement(Button, {
				[Roact.Ref] = self.refs[index],
				Icon = icon,
				LayoutOrder = layoutOrderIterator:getNextOrder(),
				OnClick = function()
					props.OnItemActivated(if useId then item else index)
				end,
				Size = self.state.sizes[index] or UDim2.new(1 / #items, -1, 1, 0),
				Style = if selectedIndex == index then "RoundRightActive" else "RoundRight",
				StyleModifier = styleModifier,
				Text = label,
			})
		else
			button[key] = Roact.createElement(Button, {
				[Roact.Ref] = self.refs[index],
				Icon = icon,
				LayoutOrder = layoutOrderIterator:getNextOrder(),
				OnClick = function()
					props.OnItemActivated(if useId then item else index)
				end,
				Size = self.state.sizes[index] or UDim2.new(1 / #items, -1, 1, 0),
				Style = if selectedIndex == index then "RoundCenterActive" else "RoundCenter",
				StyleModifier = styleModifier,
				Text = label,
			})
			button[key .. "Separator"] = Roact.createElement(Separator, {
				DominantAxis = Enum.DominantAxis.Height,
				LayoutOrder = layoutOrderIterator:getNextOrder(),
			})
		end
	end

	return Roact.createElement(Pane, {
		Layout = Enum.FillDirection.Horizontal,
		LayoutOrder = layoutOrder,
		Size = size,
		[Roact.Ref] = self.ref,
		[Roact.Change.AbsoluteSize] = self.evaluateMinimums,
	}, button)
end

SegmentedButton = withContext({
	Stylizer = ContextServices.Stylizer,
})(SegmentedButton)

return SegmentedButton
