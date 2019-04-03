local Roact = require(game:GetService("CorePackages").Roact)
local Theming = require(script.Parent.Parent.Theming)

local Checkbox = Roact.PureComponent:extend("Checkbox")
local BOXSIZE = 12
local CHECK_TEXT_SIZE = 12

function Checkbox:init()
	self.state = {
		Hovered = false,
	}
end

function Checkbox:_setHovered(value)
	self:setState(function(previousState)
		if previousState.Hovered ~= value then
			return { Hovered = value }
		end
	end)
end

function Checkbox:render()
	return Theming.withTheme(function(theme)
		local backgroundColor
		if self.state.Hovered then
			backgroundColor = theme.Hover
		else
			backgroundColor = theme.InputFieldBackground
		end

		return Roact.createElement("Frame", {
			Size = UDim2.new(0, BOXSIZE, 1, 0),
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			LayoutOrder = self.props.LayoutOrder,
		}, {
			Content = Roact.createElement("ImageButton", {
				Size = UDim2.new(0, BOXSIZE, 0, BOXSIZE),
				Position = UDim2.new(0.5, 0, 0.5, 0),
				AnchorPoint = Vector2.new(0.5, 0.5),
				BackgroundTransparency = 0,
				BorderColor3 = theme.Border,
				BackgroundColor3 = backgroundColor,
				BorderSizePixel = 1,
				AutoButtonColor = false,

				[Roact.Event.MouseButton1Click] = self.props.OnClicked,

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
			}, {
				Checkmark = Roact.createElement("TextLabel", {
					Size = UDim2.new(1, 0, 1, 0),
					AnchorPoint = Vector2.new(0.5, 0.5),
					Position = UDim2.new(0.5, 0, 0.5, -1),
					TextSize = CHECK_TEXT_SIZE,
					TextColor3 = theme.BrightText,
					Text = "✓",
					Visible = self.props.Checked,
					BackgroundTransparency = 1,
					BorderSizePixel = 0,
				})
			}),
		})
	end)

end

return Checkbox
