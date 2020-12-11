--[[
	Displays a single list row
]]

local main = script.Parent.Parent.Parent.Parent
local Framework = require(main.Packages.Framework)
local Roact = require(main.Packages.Roact)
local getInspectorIcon = require(main.Src.Util.getInspectorIcon)

local TweenService = game:GetService("TweenService")

local Dash = require(main.Packages.Dash)
local join = Dash.join

local NodeListRow = Roact.PureComponent:extend("NodeListRow")

local UI = Framework.UI
local LinkText = UI.LinkText
local TextLabel = UI.Decoration.TextLabel

local FLASH_DURATION_SECONDS = 1

function NodeListRow:init()
	self.containerRef = Roact.createRef()

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

	self.onClick = function()
		self.props.OnClickLink(self.props.Index)
	end
end

function NodeListRow:didUpdate()
	if self.props.Flash then
		self:flash(self.props.Flash.heat)
	end
end

function NodeListRow:flash(heat: number)
	local container = self.containerRef:getValue()
	if not container then
		return
	end
	-- Cancel a previous tween
	if self.flashTween then 
		self.flashTween:Cancel()
	end
	if self.props.IsSelected then
		return
	end
	-- Create a new tween and animate the row background
	local tweenInfo = TweenInfo.new(FLASH_DURATION_SECONDS, Enum.EasingStyle.Linear)
	self.flashTween = TweenService:create(container, tweenInfo, {
		BackgroundColor3 = self.props.Style.BackgroundColor
	})
	-- Change the green part of the color to make it look more "hot" for consecutive re-renders
	local HEAT_INCREMENT = 10
	local green = math.max(0, 255 - heat * HEAT_INCREMENT)
	container.BackgroundColor3 = Color3.fromRGB(255, green, 100)
	self.flashTween:Play()
end

function NodeListRow:render()
	local props = self.props
	local state = self.state
	local style = props.Style
	local isSelected = props.IsSelected

	local padding = style.IconPadding
	local iconInfo = getInspectorIcon(props.Icon)
	local iconSize = iconInfo.ImageRectSize.X
	local textOffset = iconSize + 3 * padding
	local backgroundColor = (isSelected and style.SelectedColor)
		or (state.isHovering and style.HoverColor)
		or style.BackgroundColor

	local textColor = isSelected and style.SelectedTextColor or nil
	local linkStyle = join(style.Link, {
		TextColor = textColor
	})

	return Roact.createElement("Frame", {
		[Roact.Event.MouseEnter] = self.onMouseEnter,
		[Roact.Event.MouseLeave] = self.onMouseLeave,
		[Roact.Event.InputBegan] = self.onInputBegan,
		[Roact.Ref] = self.containerRef,
		LayoutOrder = props.Index,
		BorderSizePixel = 0,
		BackgroundColor3 = backgroundColor,
		Size = UDim2.new(1, 0, 0, style.RowHeight),
	}, {
		Icon = Roact.createElement("ImageLabel", {
			Size = UDim2.fromOffset(iconSize, iconInfo.ImageRectSize.Y),
			BackgroundTransparency = 1,
			Image = iconInfo.Image,
			ImageRectSize = iconInfo.ImageRectSize,
			ImageRectOffset = iconInfo.ImageRectOffset,
			Position = UDim2.new(0, padding, 0.5, 0),
			AnchorPoint = Vector2.new(0, 0.5)
		}),
		Text = Roact.createElement(TextLabel, {
			Style = style.Text,
			Text = props.Name,
			TextColor = textColor,
			Size = UDim2.new(1, -textOffset, 1, 0),
			Position = UDim2.new(0, textOffset, 0, 0),
			TextXAlignment = Enum.TextXAlignment.Left,
			TextYAlignment = Enum.TextYAlignment.Center
		}),
		Link = Roact.createElement(LinkText, {
			OnClick = self.onClick,
			Style = linkStyle,
			AnchorPoint = Vector2.new(1, 0),
			Position = UDim2.new(1, -5, 0, 0),
			Text = self.props.LinkText,
			TextXAlignment = Enum.TextXAlignment.Right,
			TextYAlignment = Enum.TextYAlignment.Center
		})
	})
end

return NodeListRow