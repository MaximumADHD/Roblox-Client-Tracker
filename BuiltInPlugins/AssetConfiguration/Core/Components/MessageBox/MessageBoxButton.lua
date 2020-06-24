local Plugin = script.Parent.Parent.Parent.Parent

local Libs = Plugin.Libs
local Roact = require(Libs.Roact)

local Constants = require(Plugin.Core.Util.Constants)
local ContextHelper = require(Plugin.Core.Util.ContextHelper)

local withTheme = ContextHelper.withTheme

local RoundButton = require(Plugin.Core.Components.RoundButton)

local MessageBoxButton = Roact.PureComponent:extend("MessageBoxButton")

function MessageBoxButton:init(props)
	self.state = {
		isHovered = false,
		isSelected = false,
	}

	self.onMouseEnter = function()
		self:setState({
			isHovered = true,
		})
	end

	self.onMouseLeave = function()
		self:setState({
			isHovered = false,
			isSelected = false,
		})
	end

	self.onMouseDown = function()
		self:setState({
			isHovered = true,
			isSelected = true,
		})
	end

	self.onMouseUp = function()
		self:setState({
			isSelected = false,
		})

		if self.props.onButtonClicked then
			self.props.onButtonClicked(self.props.index, self.props.action)
		end
	end
end

function MessageBoxButton:render()
	return withTheme(function(theme)
		local props = self.props
		local state = self.state

		local index = props.index
		local text = props.Text

		local isHovered = state.isHovered
		local isSelected = state.isSelected

		local messageBoxTheme = theme.messageBox
		local buttonTheme = messageBoxTheme.button

		local buttonWidth = Constants.MESSAGE_BOX_BUTTON_WIDTH

		return Roact.createElement(RoundButton, {
			Size = UDim2.new(0, buttonWidth, 1, 0),
			LayoutOrder = index,

			BackgroundColor3 = isSelected and buttonTheme.backgroundSelectedColor or buttonTheme.backgroundColor,
			BorderColor3 = (isHovered or isSelected) and buttonTheme.borderSelectedColor or buttonTheme.borderColor,

			[Roact.Event.MouseEnter] = self.onMouseEnter,
			[Roact.Event.MouseLeave] = self.onMouseLeave,
			[Roact.Event.MouseButton1Down] = self.onMouseDown,
			[Roact.Event.MouseButton1Up] = self.onMouseUp,
		}, {
			TextLabel = Roact.createElement("TextLabel", {
				BackgroundTransparency = 1,
				Position = UDim2.new(0, 0, 0, -1),
				Size = UDim2.new(1, 0, 1, 0),

				TextColor3 = isSelected and buttonTheme.textSelectedColor or buttonTheme.textColor,

				Text = text,

				Font = Constants.FONT,
				TextSize = Constants.FONT_SIZE_SMALL,
				TextXAlignment = Enum.TextXAlignment.Center,
			})
		})
	end)
end

return MessageBoxButton
