local Plugin = script.Parent.Parent.Parent.Parent

local Packages = Plugin.Packages
local Roact = require(Packages.Roact)
local Framework = require(Packages.Framework)

local Constants = require(Plugin.Core.Util.Constants)
local ContextHelper = require(Plugin.Core.Util.ContextHelper)

local withTheme = ContextHelper.withTheme
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local SuggestionsButton = Roact.PureComponent:extend("SuggestionsButton")

local FFlagToolboxRemoveUnusedSuggestionsFeature = game:GetFastFlag("ToolboxRemoveUnusedSuggestionsFeature")
if FFlagToolboxRemoveUnusedSuggestionsFeature then
	return {}
end

function SuggestionsButton:init(props)
	self.state = {
		isHovered = false,
	}

	self.onMouseEnter = function(rbx, x, y)
		self:setState({
			isHovered = true,
		})
	end

	self.onMouseLeave = function(rbx, x, y)
		self:setState({
			isHovered = false,
		})
	end

	self.onInputChanged = function(rbx, input)
		if input.UserInputType == Enum.UserInputType.MouseMovement then
			self:setState({
				isHovered = true,
			})
		end
	end

	self.onActivated = function(rbx, input)
		self.props.onClicked(self.props.LayoutOrder)
	end
end

function SuggestionsButton:render()
	local props = self.props
	local state = self.state
	local theme = self.props.Stylizer

	local isHovered = state.isHovered

	local text = props.Text or ""
	local textWidth = Constants.getTextSize(text).x
	local layoutOrder = props.LayoutOrder or 0

	local suggestionsTheme = theme.suggestionsComponent

	local textColor = isHovered and suggestionsTheme.textHoveredColor or suggestionsTheme.textColor

	return Roact.createElement("TextButton", {
		BackgroundTransparency = 1,
		Size = UDim2.new(0, textWidth, 1, 0),
		Text = text,
		Font = Constants.FONT,
		TextSize = Constants.SUGGESTIONS_FONT_SIZE,

		TextColor3 = textColor,

		LayoutOrder = layoutOrder,
		TextXAlignment = Enum.TextXAlignment.Left,

		[Roact.Event.MouseEnter] = self.onMouseEnter,
		[Roact.Event.MouseLeave] = self.onMouseLeave,
		[Roact.Event.InputChanged] = self.onInputChanged,
		[Roact.Event.Activated] = self.onActivated,
	}, {
		Underline = isHovered and Roact.createElement("Frame", {
			BorderSizePixel = 0,
			Position = UDim2.new(0, 0, 0.5, (Constants.SUGGESTIONS_FONT_SIZE / 2) - 1),
			Size = UDim2.new(1, 0, 0, 1),
			BackgroundColor3 = suggestionsTheme.underlineColor,
		}),
	})
end

SuggestionsButton = withContext({
	Stylizer = ContextServices.Stylizer,
})(SuggestionsButton)

return SuggestionsButton
