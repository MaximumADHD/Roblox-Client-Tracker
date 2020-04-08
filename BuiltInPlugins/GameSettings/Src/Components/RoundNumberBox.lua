--[[
	A NumberBox with rounded corners that allows entry of numbers.

	Props:
		bool Active = Whether this component can be interacted with.
		int Height = The vertical size of this TextBox, in pixels.
		int LayoutOrder = The sort order of this component in a UIListLayout.

		string ErrorMessage = A general override message used to display an error.
			A non-nil ErrorMessage will border the TextBox in red.

		int Number = The number to display in the TextBox
		function SetNumber(number) = Callback to tell parent that number has changed
		function FocusChanged(focused) = Callback when this TextBox is focused.
		function HoverChanged(hovering) = Callback when the mouse enters or leaves this TextBox.
]]

local PADDING = UDim.new(0, 10)

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local Cryo = require(Plugin.Cryo)
local UILibrary = require(Plugin.UILibrary)
local DEPRECATED_Constants = require(Plugin.Src.Util.DEPRECATED_Constants)
local withTheme = require(Plugin.Src.Consumers.withTheme)
local getMouse = require(Plugin.Src.Consumers.getMouse)

local TextEntry = UILibrary.Component.TextEntry

local RoundNumberBox = Roact.PureComponent:extend("RoundNumberBox")

function RoundNumberBox:init()
	self.state = {
		Focused = false,
		TextContainsNonNumbers = false,
	}

	self.focusChanged = function(focused)
		if self.props.Active then
			if self.props.FocusChanged then
				self.props.FocusChanged(focused)
			end
			self:setState(Cryo.Dictionary.join(self.state, {
				Focused = focused,
			}))
		end
	end

	self.mouseHoverChanged = function(hovering)
		if self.props.Active then
			getMouse(self).setHoverIcon("IBeam", hovering)

			if self.state.Focused and self.props.HoverChanged then
				self.props.HoverChanged(hovering)
			end
		end
	end

	self.setText = function(text)
		local number = tonumber(text)

		if (number == nil) and (not self.state.TextContainsNonNumbers) then
			self:setState({
				TextContainsNonNumbers = true,
			})
		elseif (number ~= nil) then
			if self.state.TextContainsNonNumbers then
				self:setState({
					TextContainsNonNumbers = false,
				})
			end

			self.props.SetNumber(number)
		end
	end
end

function RoundNumberBox:render()
	return withTheme(function(theme)
		local active = self.props.Active
		local focused = self.state.Focused
		local errorState = self.props.ErrorMessage
			or self.state.TextContainsNonNumbers

		local backgroundProps = {
			-- Necessary to make the rounded background
			BackgroundTransparency = 1,
			Image = DEPRECATED_Constants.ROUNDED_BACKGROUND_IMAGE,
			ImageTransparency = 0,
			ImageColor3 = active and theme.textBox.background or theme.textBox.disabled,
			ScaleType = Enum.ScaleType.Slice,
			SliceCenter = DEPRECATED_Constants.ROUNDED_FRAME_SLICE,

			Position = UDim2.new(0, 0, 0, 0),
			Size = UDim2.new(1, 0, 0, self.props.Height or DEPRECATED_Constants.ROUND_TEXT_BOX_DEFAULT_HEIGHT),

			LayoutOrder = self.props.LayoutOrder or 1,
		}

		local borderColor
		if active then
			if errorState then
				borderColor = DEPRECATED_Constants.ERROR_COLOR
			elseif focused then
				borderColor = theme.textBox.borderHover
			else
				borderColor = theme.textBox.borderDefault
			end
		else
			borderColor = theme.textBox.borderDefault
		end

		return Roact.createElement("ImageLabel", backgroundProps, {
			Border = Roact.createElement("ImageLabel", {
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundTransparency = 1,
				Image = DEPRECATED_Constants.ROUNDED_BORDER_IMAGE,
				ImageColor3 = borderColor,
				ScaleType = Enum.ScaleType.Slice,
				SliceCenter = DEPRECATED_Constants.ROUNDED_FRAME_SLICE,
			}, {
				Padding = Roact.createElement("UIPadding", {
					PaddingLeft = PADDING,
					PaddingRight = PADDING,
					PaddingTop = PADDING,
					PaddingBottom = PADDING,
				}),
				Text = Roact.createElement(TextEntry, Cryo.Dictionary.join(theme.fontStyle.Normal, {
					Visible = self.props.Active,
					Text = self.props.Number,
					FocusChanged = self.focusChanged,
					HoverChanged = self.mouseHoverChanged,
					SetText = self.setText,
					TextColor3 = theme.textBox.text,
				})),
			}),
		})
	end)
end

return RoundNumberBox
