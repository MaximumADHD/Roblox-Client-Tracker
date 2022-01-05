--[[
	A link like button that is clickable and resemble a link when hovered.
	It's up to the user to make sure the content of the button will be within the size of
	the component.
	This component handles only a single line link button. The size of the link button is
	determined by the content.

	Necessary props:
		Size UDim2, used to determin how big the button should be.
		Text String,  the text content of the button.

	Optional pros:
		LayoutOrder number, will be used by the parent layouter to change this componnet's position.
		onActivated function, the function that will be called when this button is clicked
]]
local Plugin = script.Parent.Parent.Parent.Parent

local FFlagToolboxDeduplicatePackages = game:GetFastFlag("ToolboxDeduplicatePackages")
local Libs
if FFlagToolboxDeduplicatePackages then
	Libs = Plugin.Packages
else
	Libs = Plugin.Libs
end
local Roact = require(Libs.Roact)
local Framework = require(Libs.Framework)

local Util = Plugin.Core.Util
local ContextHelper = require(Util.ContextHelper)
local getTextSize = require(Util.getTextSize)
local Constants = require(Util.Constants)

local withTheme = ContextHelper.withTheme
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local LinkButton = Roact.PureComponent:extend("LinkButton")

function LinkButton:init(props)
	self.state = {
		hovered = false
	}

	self.onMouseEnter = function(rbx, x, y)
		self:setState({
			hovered = true
		})
	end

	self.onMouseLeave = function(rbx, x, y)
		self:setState({
			hovered = false
		})
	end

	self.onActivated = function(rbx)
		if props.onActivated then
			props.onActivated()
		end
	end
end

function LinkButton:render()
	local props = self.props
	local state = self.state
	local theme = props.Stylizer

	local linkButtonTheme = theme.linkButton

	local textSize = getTextSize(props.Text, nil, nil, Vector2.new(9999, 9999))

	return Roact.createElement("Frame", {
		Size = props.Size,

		BackgroundTransparency = 1,
		BorderSizePixel = 0,

		LayoutOrder = props.LayoutOrder,
	}, {
		Link = Roact.createElement("TextButton", {
			Size = UDim2.new(0, textSize.X, 0, textSize.Y),

			BackgroundTransparency = 1,
			BorderSizePixel = 0,

			Text = props.Text,
			TextSize = props.TextSize,
			Font = Constants.FONT,
			TextScaled = true,
			TextColor3 = linkButtonTheme.textColor,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextYAlignment = Enum.TextYAlignment.Center,

			[Roact.Event.MouseEnter] = self.onMouseEnter,
			[Roact.Event.MouseLeave] = self.onMouseLeave,
			[Roact.Event.Activated] = self.onActivated,
		}, {
			UnderLine = state.hovered and Roact.createElement("Frame",
			{
				AnchorPoint = Vector2.new(0, 1),
				Position = UDim2.new(0, 0, 1, 0),
				Size = UDim2.new(0, textSize.X, 0, 1),
				BackgroundColor3 = linkButtonTheme.textColor,
				BorderSizePixel = 0,
			})
		})
	})
end

LinkButton = withContext({
	Stylizer = ContextServices.Stylizer,
})(LinkButton)

return LinkButton
