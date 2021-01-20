--[[
	Displays a single list row
]]

local main = script.Parent.Parent.Parent.Parent
local Framework = require(main.Packages.Framework)
local Roact = require(main.Packages.Roact)

local Dash = require(main.Packages.Dash)
local mapOne = Dash.mapOne

local FieldTreeRow = Roact.PureComponent:extend("FieldTreeRow")

local UI = Framework.UI
local TextLabel = UI.Decoration.TextLabel

function FieldTreeRow:init()
	self.state = {
		isHovering = false
	}

	self.onMouseEnter = function()
		self:setState({
			isHovering = true
		})
	end

	self.onMouseLeave = function()
		self:setState({
			isHovering = false
		})
	end

	self.onInputBegan = function(frame, input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			self.props.OnSelect(self.props.Index)
		end
	end

	self.onToggle = function()
		self.props.OnToggle(self.props.Row)
	end
end

function FieldTreeRow:render()
	local props = self.props
	local state = self.state
	local style = props.Style
	local isSelected = props.IsSelected
	local isExpanded = props.IsExpanded
	local isHovering = state.isHovering
	local row = props.Row
	
	local item = row.item
	local hasChildren = item.Children and mapOne(item.Children)
	local isHeading = item.IsHeading

	local backgroundColor =
		isHeading and style.HeadingColor
		or isSelected and style.SelectedColor
		or isHovering and style.HoverColor
		or style.BackgroundColor

	local indent = isHeading and 0 or row.depth * style.Indent

	local nameWidthPercent = 0.35
	local nameSize = isHeading and UDim2.fromScale(1, 1) or UDim2.new(nameWidthPercent, 0, 1, 0)
	local paddingV = 2
	local paddingH = 5
	local arrowSize = style.Arrow.Size

	local nameX = paddingH + indent + (hasChildren and arrowSize + paddingH or 0)
	
	return Roact.createElement("Frame", {
		[Roact.Event.MouseEnter] = self.onMouseEnter,
		[Roact.Event.MouseLeave] = self.onMouseLeave,
		[Roact.Event.InputBegan] = self.onInputBegan,
		LayoutOrder = props.Index,
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 0, 0, style.RowHeight),
	}, {
		NameCell = Roact.createElement("Frame", {
			Size = nameSize,
			BackgroundColor3 = backgroundColor,
			BorderColor3 = style.BorderColor
		}, {
			Toggle = hasChildren and Roact.createElement("ImageButton", {
				Position = UDim2.new(0, indent + paddingH, 0.5, 0),
				AnchorPoint = Vector2.new(0, 0.5),
				Size = UDim2.new(0, arrowSize, 0, arrowSize),
				BackgroundTransparency = 1,
				Image = style.Arrow.Image,
				ImageColor3 = style.Arrow.Color,
				ImageRectSize = Vector2.new(arrowSize, arrowSize),
				ImageRectOffset = isExpanded and style.Arrow.ExpandedOffset or style.Arrow.CollapsedOffset,
				[Roact.Event.Activated] = self.onToggle
			}) or nil,
			NameLabel = Roact.createElement(TextLabel, {
				Text = tostring(item.Name),
				Font = isHeading and Enum.Font.SourceSansBold or nil,
				TextXAlignment = Enum.TextXAlignment.Left,
				Position = UDim2.new(0, nameX, 0, paddingV),
				Size = UDim2.new(1, - paddingH - nameX, 1, -2 * paddingV),
				TextTruncate = Enum.TextTruncate.AtEnd,
			})
		}),
		SummaryCell = not isHeading and Roact.createElement("Frame", {
			Size = UDim2.new(1 - nameWidthPercent, 0, 1, 0),
			Position = UDim2.new(nameWidthPercent, 0, 0, 0),
			BackgroundColor3 = backgroundColor,
			BorderColor3 = style.BorderColor
		}, {
			SummaryLabel = Roact.createElement(TextLabel, {
				Text = tostring(item.Summary),
				Font = isHeading and Enum.Font.SourceSansBold or nil,
				TextXAlignment = Enum.TextXAlignment.Left,
				Position = UDim2.new(0, paddingH, 0, paddingV),
				Size = UDim2.new(1, -2 * paddingH, 1, -2 * paddingV),
				TextTruncate = Enum.TextTruncate.AtEnd,
			})
		})
	})
end

return FieldTreeRow