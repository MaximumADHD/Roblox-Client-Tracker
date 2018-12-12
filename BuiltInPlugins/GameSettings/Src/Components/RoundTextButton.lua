--[[
	A button with rounded corners.

	Supports one of two styles:
		"Blue": A blue button with white text and no border.
		"White": A white button with black text and a black border.

	Props:
		bool Active = Whether or not this button can be clicked.
		UDim2 Size = UDim2.new(0, Constants.BUTTON_WIDTH, 0, Constants.BUTTON_HEIGHT)
		int LayoutOrder = The order this RoundTextButton will sort to when placed in a UIListLayout.
		string Name = The text to display in this Button.
		function OnClicked = The function that will be called when this button is clicked.
		variant Value = Data that can be accessed from the OnClicked callback.
		table Style = {
			ButtonColor,
			ButtonColor_Hover,
			ButtonColor_Disabled,
			TextColor,
			TextColor_Disabled,
			BorderColor,
		}
]]

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local Constants = require(Plugin.Src.Util.Constants)
local getMouse = require(Plugin.Src.Consumers.getMouse)

local RoundTextButton = Roact.PureComponent:extend("RoundTextButton")

function RoundTextButton:init()
	self.state = {
		Hovering = false,
	}

	self.mouseEnter = function()
		if self.props.Active then
			self:mouseHoverChanged(true)
		end
	end

	self.mouseLeave = function()
		if self.props.Active then
			self:mouseHoverChanged(false)
		end
	end
end

function RoundTextButton:mouseHoverChanged(hovering)
	getMouse(self).setHoverIcon("PointingHand", hovering)
	self:setState({
		Hovering = hovering,
	})
end

function RoundTextButton:render()
	local active = self.props.Active
	local hovering = self.state.Hovering
	local style = self.props.Style
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
	}

	if active then
		backgroundProps.ImageColor3 = hovering and style.ButtonColor_Hover or style.ButtonColor
	else
		backgroundProps.ImageColor3 = style.ButtonColor_Disabled
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
			TextColor3 = active and style.TextColor or style.TextColor_Disabled,
			TextSize = 22,
			Text = self.props.Name,
			ZIndex = self.props.ZIndex or 1,
		}),
	})
end

return RoundTextButton
