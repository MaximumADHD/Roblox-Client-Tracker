--[[
	Displays a single list row
]]

local main = script.Parent.Parent.Parent.Parent
local Framework = require(main.Packages.Framework)
local SharedFlags = Framework.SharedFlags
local FFlagDevFrameworkList = SharedFlags.getFFlagDevFrameworkList()

local Roact = require(main.Packages.Roact)
local getInspectorIcon = require(main.Src.Util.getInspectorIcon)

local TweenService = game:GetService("TweenService")

local Dash = require(main.Packages.Dash)
local mapOne = Dash.mapOne

local RoactElementRow = Roact.PureComponent:extend("RoactElementRow")

local UI = Framework.UI
local Pane = UI.Pane
local TextLabel = UI.Decoration.TextLabel

local FLASH_DURATION_SECONDS = 1

function RoactElementRow:init()
	self.state = {
		isHovering = false,
	}

	self.containerRef = Roact.createRef()

	self.onMouseEnter = function()
		self:setState({
			isHovering = true,
		})
		self.props.OnEnterRow(self.props.Row)
	end

	self.onMouseLeave = function()
		self:setState({
			isHovering = false,
		})
		self.props.OnLeaveRow(self.props.Row)
	end

	self.onInputBegan = function(frame, input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			self.props.OnSelect(self.props.Row)
		end
	end

	self.onToggle = function()
		self.props.OnToggle(self.props.Row)
	end
end

function RoactElementRow:didUpdate()
	if self:isFlashing() then
		self:flash(self.props.Flash.heat)
	end
end

function RoactElementRow:isFlashing()
	local flash = self.props.Flash
	if flash then
		-- Display a flash if it is within the animation time
		local age = os.clock() - flash.time
		if age < FLASH_DURATION_SECONDS then
			return true
		end
	end
	return false
end

function RoactElementRow:flash(heat: number)
	local container = self.containerRef:getValue()
	if not container then
		return
	end
	-- Cancel a previous tween
	if self.flashTween then
		self.flashTween:Cancel()
	end
	-- Create a new tween and animate the row background
	local tweenInfo = TweenInfo.new(FLASH_DURATION_SECONDS, Enum.EasingStyle.Linear)
	self.flashTween = TweenService:create(container, tweenInfo, {
		BackgroundColor3 = self.props.Style.BackgroundColor,
	})
	-- Change the green part of the color to make it look more "hot" for consecutive re-renders
	local HEAT_INCREMENT = 10
	local green = math.max(0, 255 - heat * HEAT_INCREMENT)
	container.BackgroundColor3 = Color3.fromRGB(255, green, 100)
	self.flashTween:Play()
end

function RoactElementRow:render()
	local props = self.props
	local style = props.Style
	local isExpanded = props.IsExpanded
	local isSelected = props.IsSelected

	local row = props.Row
	local item = row.item
	local hasChildren = item.Children and mapOne(item.Children) ~= nil
	local indent = row.depth * style.Indent

	local arrowSize = style.Arrow.Size
	local padding = style.IconPadding
	local iconInfo = getInspectorIcon(item.Icon)

	-- Default iconSize to (0, 0) as ImageRectSize is unavailable in Roblox CLI
	local iconSize = iconInfo.ImageRectSize or Vector2.new()
	local labelOffset = indent + arrowSize + 2 * padding
	local textOffset = iconSize.X + 3 * padding

	return Roact.createElement(Pane, {
		AutomaticSize = if FFlagDevFrameworkList then Enum.AutomaticSize.X else nil,
		Position = if FFlagDevFrameworkList then props.Position else nil,
		Size = if FFlagDevFrameworkList then props.Size else UDim2.new(1, 0, 0, style.RowHeight),
		LayoutOrder = row.index,
		[Roact.Ref] = self.containerRef,
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
			[Roact.Event.Activated] = self.onToggle,
		}) or nil,
		Label = Roact.createElement("Frame", {
			AutomaticSize = if FFlagDevFrameworkList then Enum.AutomaticSize.X else nil,
			[Roact.Event.MouseEnter] = self.onMouseEnter,
			[Roact.Event.MouseLeave] = self.onMouseLeave,
			[Roact.Event.InputBegan] = self.onInputBegan,
			BackgroundTransparency = self.state.isHovering or isSelected and 0 or 1,
			BorderSizePixel = 0,
			BackgroundColor3 = isSelected and style.SelectedColor or style.HoverColor,
			Position = UDim2.fromOffset(labelOffset, 0),
			Size = if FFlagDevFrameworkList then UDim2.fromScale(0, 1) else UDim2.new(1, -arrowSize, 1, 0),
		}, {
			Icon = Roact.createElement("ImageLabel", {
				Size = UDim2.fromOffset(iconSize.X, iconSize.Y),
				BackgroundTransparency = 1,
				Image = iconInfo.Image,
				ImageRectSize = iconSize,
				ImageRectOffset = iconInfo.ImageRectOffset,
				Position = UDim2.new(0, padding, 0.5, 0),
				AnchorPoint = Vector2.new(0, 0.5),
			}),
			Text = Roact.createElement(TextLabel, {
				AutomaticSize = if FFlagDevFrameworkList then Enum.AutomaticSize.X else nil,
				Style = style.Text,
				Text = tostring(item.Name),
				TextColor = isSelected and style.SelectedTextColor or nil,
				Size = if FFlagDevFrameworkList then UDim2.fromScale(0, 1) else UDim2.new(1, -textOffset, 1, 0),
				Position = UDim2.new(0, textOffset, 0, 0),
				TextXAlignment = Enum.TextXAlignment.Left,
				TextYAlignment = Enum.TextYAlignment.Center,
			}),
		}),
	})
end

return RoactElementRow
