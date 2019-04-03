--[[
	A button with rounded corners.

	Supports one of two styles:
		"Blue": A blue button with white text and no border.
		"White": A white button with black text and a black border.

	Props:
		bool Enabled = Whether or not this button can be clicked.
		UDim2 Size = UDim2.new(0, Constants.BUTTON_WIDTH, 0, Constants.BUTTON_HEIGHT)
		int LayoutOrder = The order this RoundTextButton will sort to when placed in a UIListLayout.
		string Name = The text to display in this Button.
		function OnClicked = The function that will be called when this button is clicked.
		function OnHoverChanged = The function that will be called when the hover state changes.
		variant Value = Data that can be accessed from the OnClicked callback.
		table Style = {
			ButtonColor,
			ButtonHoverColor,
			ButtonPressedColor,
			ButtonDisabledColor,
			TextColor,
			TextDisabledColor,
			BorderColor,
		}
		bool ShowPressed = Whether the button appears a different color when pressed
		Mouse = plugin mouse for changing the mouse icon
]]

local DFFlagGameSettingsWorldPanel = settings():GetFFlag("GameSettingsWorldPanel3")

local Roact = require(script.Parent.Internal.RequireRoact)
local Constants = require(script.Parent.Internal.Constants)
local Mouse = require(script.Parent.Internal.Mouse)
local ThemeChangeListener = require(script.Parent.Internal.ThemeChangeListener)
local Theme = require(script.Parent.Internal.Theme)

local getStyle = nil

local RoundTextButton = Roact.PureComponent:extend("RoundTextButton")

function RoundTextButton:init()
	self.state = {
		Hovering = false,
		Pressed = false
	}

	self.mouseEnter = function()
		if self.props.Enabled then
			self:mouseHoverChanged(true)
		end
	end

	self.mouseLeave = function()
		if self.props.Enabled then
			self:mouseHoverChanged(false)
			self:setState({
				Pressed = false,
			})
		end
	end
end

function RoundTextButton:mouseHoverChanged(hovering)
	if hovering then
		Mouse.onEnter(self.props.Mouse)
	else
		Mouse.onLeave(self.props.Mouse)
	end

	if DFFlagGameSettingsWorldPanel and nil ~= self.props.OnHoverChanged then
		self.props.OnHoverChanged(self.props.Value, hovering)
	end

	self:setState({
		Hovering = hovering,
	})
end

function RoundTextButton:render()
	local function renderInternal()
		local active = self.props.Enabled
		local hovering = self.state.Hovering
		local style = getStyle(self)
		local match = self.props.BorderMatchesBackground

		local backgroundProps = {
			-- Necessary to make the rounded background
			BackgroundTransparency = 1,
			Image = Constants.ROUNDED_BACKGROUND_IMAGE,
			ImageTransparency = 0,
			ScaleType = Enum.ScaleType.Slice,
			SliceCenter = Constants.ROUNDED_FRAME_SLICE,

			Position = UDim2.new(0, 0, 0, 0),
			Size = self.props.Size or UDim2.new(0, Constants.BUTTON_WIDTH, 0, Constants.BUTTON_HEIGHT),

			LayoutOrder = self.props.LayoutOrder or 1,
			ZIndex = self.props.ZIndex or 1,

			[Roact.Event.MouseEnter] = self.mouseEnter,
			[Roact.Event.MouseLeave] = self.mouseLeave,

			[Roact.Event.Activated] = function()
				if active then
					self.props.OnClicked(self.props.Value)
				end
			end,

			[Roact.Event.InputBegan] = function(rbx, input)
				if active and input.UserInputType == Enum.UserInputType.MouseButton1 then
					self:setState({
						Pressed = true,
					})
				end
			end,

			[Roact.Event.InputEnded] = function(rbx, input)
				if active and input.UserInputType == Enum.UserInputType.MouseButton1 then
					self:setState({
						Pressed = false,
					})
				end
			end
		}

		if active then
			if self.props.ShowPressed and self.state.Pressed then
				backgroundProps.ImageColor3 = style.ButtonPressedColor
			else
				backgroundProps.ImageColor3 = hovering and style.ButtonHoverColor or style.ButtonColor
			end
		else
			backgroundProps.ImageColor3 = style.ButtonDisabledColor
		end

		return Roact.createElement("ImageButton", backgroundProps, {
			Border = Roact.createElement("ImageLabel", {
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundTransparency = 1,
				Image = Constants.ROUNDED_BORDER_IMAGE,
				ImageColor3 = match and backgroundProps.ImageColor3 or style.BorderColor,
				ScaleType = Enum.ScaleType.Slice,
				SliceCenter = Constants.ROUNDED_FRAME_SLICE,
				ZIndex = self.props.ZIndex or 1,
			}),

			Text = Roact.createElement("TextLabel", {
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Font = Enum.Font.SourceSans,
				TextColor3 = active and style.TextColor or style.TextDisabledColor,
				TextSize = 22,
				Text = self.props.Name,
				ZIndex = self.props.ZIndex or 1,
			}),
		})
	end

	return Roact.createElement(ThemeChangeListener, {
		render = renderInternal,
	})
end

getStyle = function(self)
	local defaultProps = Theme.getDefaultButtonProps()

	local style = {}
	for name, defaultPropVal in pairs(defaultProps) do
		style[name] = self.props.Style and self.props.Style[name] or defaultPropVal
	end
	return style
end

return RoundTextButton
