local Roact = require(game:GetService("CorePackages").Roact)
local Theming = require(script.Parent.Parent.Theming)

local Button = Roact.Component:extend("Button")

function Button:init()
	self.state = {
		Hovered = false,
	}
end

function Button:_setHovered(value)
	self:setState(function(previousState)
		if previousState.Hovered ~= value then
			return { Hovered = value }
		end
	end)
end

function Button:render()
	local backgroundColor
	local textColor

	return Theming.withTheme(function(theme)
		if self.props.Disabled then
			backgroundColor = theme.MainBackground
			textColor = theme.DimmedText
		else
			if self.state.Hovered then
				backgroundColor = theme.Hover
			else
				backgroundColor = theme.MainBackground
			end
			textColor = theme.BrightText
		end

		return Roact.createElement("TextButton", {
			TextColor3 = textColor,
			Text = self.props.Text,
			Size = self.props.Size,
			LayoutOrder = self.props.LayoutOrder,
			BorderSizePixel = 1,
			BorderColor3 = theme.Border,
			AutoButtonColor = false,
			BackgroundColor3 = backgroundColor,

			[Roact.Event.MouseButton1Click] = self.props.OnClick,

			[Roact.Event.InputBegan] = function(gui, input)
				if input.UserInputType == Enum.UserInputType.MouseMovement then
					self:_setHovered(true)
				end
			end,

			[Roact.Event.InputEnded] = function(gui, input)
				if input.UserInputType == Enum.UserInputType.MouseMovement then
					self:_setHovered(false)
				end
			end,
		})
	end)
end

return Button
