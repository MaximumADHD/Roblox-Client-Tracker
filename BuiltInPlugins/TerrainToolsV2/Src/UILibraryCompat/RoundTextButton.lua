--[[
	Mostly the same as UILibrary RoundTextButton component, but modified to use dev framework context
]]

local Plugin = script.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local Roact = require(Plugin.Packages.Roact)

local ContextServices = Framework.ContextServices
local ContextItems = require(Plugin.Src.ContextItems)

local BUTTON_WIDTH = 125
local BUTTON_HEIGHT = 35

local RoundTextButton = Roact.PureComponent:extend("RoundTextButton")

function RoundTextButton:init()
	self.state = {
		Hovering = false,
	}

	self.mouseEnter = function()
		self:setState({
			Hovering = true,
		})
	end

	self.mouseLeave = function()
		self:setState({
			Hovering = false,
		})
	end
end

function RoundTextButton:render()
	local theme = self.props.Theme:get()

	local active = self.props.Active
	local hovering = self.state.Hovering
	local style = self.props.Style
	local match = self.props.BorderMatchesBackground
	local textSize = self.props.TextSize

	local backgroundProps = {
		-- Necessary to make the rounded background
		BackgroundTransparency = 1,
		Image = theme.roundFrame.backgroundImage,
		ImageTransparency = 0,
		ScaleType = Enum.ScaleType.Slice,
		SliceCenter = theme.roundFrame.slice,

		Position = self.props.Position or UDim2.new(0, 0, 0, 0),
		Size = self.props.Size or UDim2.new(0, BUTTON_WIDTH, 0, BUTTON_HEIGHT),
		AnchorPoint = self.props.AnchorPoint or Vector2.new(0, 0),

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
			Image = theme.roundFrame.borderImage,
			ImageColor3 = match and backgroundProps.ImageColor3 or style.BorderColor,
			ScaleType = Enum.ScaleType.Slice,
			SliceCenter = theme.roundFrame.slice,
			ZIndex = self.props.ZIndex or 1,
		}),

		Text = Roact.createElement("TextLabel", {
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			Font = theme.textButton.font,
			TextColor3 = active and style.TextColor or style.TextColor_Disabled,
			TextSize = textSize,
			Text = self.props.Name,
			ZIndex = self.props.ZIndex or 1,
		}),
	})
end

ContextServices.mapToProps(RoundTextButton, {
	Theme = ContextItems.UILibraryTheme,
})

return RoundTextButton
