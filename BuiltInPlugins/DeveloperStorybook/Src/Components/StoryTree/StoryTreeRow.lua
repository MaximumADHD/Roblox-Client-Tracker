--[[
	Displays a single row of the StoryTree
]]
local main = script.Parent.Parent.Parent.Parent
local Framework = require(main.Packages.Framework)
local SharedFlags = Framework.SharedFlags
local FFlagDevFrameworkList = SharedFlags.getFFlagDevFrameworkList()

if FFlagDevFrameworkList then
	return nil
end

local Roact = require(main.Packages.Roact)

local StoryTreeRow = Roact.PureComponent:extend("StoryTreeRow")

local Util = Framework.Util
local isInputMainPress = Util.isInputMainPress

local UI = Framework.UI
local Container = UI.Container
local TextLabel = UI.Decoration.TextLabel

function StoryTreeRow:init()
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
		if isInputMainPress(input) then
			self.props.onSelected(self.props.row)
		end
	end
end

function StoryTreeRow:render()
	local props = self.props
	local row = props.row
	local item = row.item
	local style = props.style
	local isSelected = props.isSelected
	local isExpanded = props.isExpanded
	local hasChildren = #item:GetChildren() > 0
	
	local onToggled = props.onToggled
	local indent = row.depth * style.Indent

	local arrowSize = style.Arrow.Size
	local padding = style.IconPadding
	
	local labelOffset = indent + arrowSize + 2 * padding
	local iconSize = 16
	local textOffset = iconSize + 3 * padding

	return Roact.createElement(Container, {
		Size = UDim2.new(1, -indent, 0, style.RowHeight),
		LayoutOrder = row.index,
	}, {
		Toggle = hasChildren and Roact.createElement("ImageButton", {
			Position = UDim2.new(0, indent + padding, 0.5, 0),
			AnchorPoint = Vector2.new(0, 0.5),
			Size = UDim2.new(0, arrowSize, 0, arrowSize),
			BackgroundTransparency = 1,
			Image = style.Arrow.Image,
			ImageColor3 = style.Arrow.Color,
			ImageRectSize = Vector2.new(arrowSize, arrowSize),
			ImageRectOffset = isExpanded and style.Arrow.ExpandedOffset or style.Arrow.CollapsedOffset,
			[Roact.Event.Activated] = function()
				onToggled(row)
			end
		}) or nil,
		Label = Roact.createElement("Frame", {
			[Roact.Event.MouseEnter] = self.onMouseEnter,
			[Roact.Event.MouseLeave] = self.onMouseLeave,
			[Roact.Event.InputBegan] = self.onInputBegan,
			BackgroundTransparency = self.state.isHovering or isSelected and 0 or 1,
			BorderSizePixel = 0,
			BackgroundColor3 = isSelected and style.SelectedColor or style.HoverColor,
			Position = UDim2.fromOffset(labelOffset, 0),
			Size = UDim2.new(1, -arrowSize, 1, 0),
		}, {
			Icon = Roact.createElement("ImageLabel", {
				Size = UDim2.fromOffset(iconSize, iconSize),
				BackgroundTransparency = 1,
				Image = ("rbxasset://textures/DeveloperStorybook/%s.png"):format(item.Icon),
				Position = UDim2.new(0, padding, 0.5, 0),
				AnchorPoint = Vector2.new(0, 0.5)
			}),
			Text = Roact.createElement(TextLabel, {
				Text = item.Name,
				TextColor = isSelected and style.SelectedTextColor or nil,
				Size = UDim2.new(1, -textOffset, 1, 0),
				Position = UDim2.new(0, textOffset, 0, 0),
				TextXAlignment = Enum.TextXAlignment.Left,
				TextYAlignment = Enum.TextYAlignment.Center
			})
		})
	})
end

return StoryTreeRow
