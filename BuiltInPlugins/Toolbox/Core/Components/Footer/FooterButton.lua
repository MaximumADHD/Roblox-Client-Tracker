local Plugin = script.Parent.Parent.Parent.Parent

local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)

local Constants = require(Plugin.Core.Util.Constants)

local Background = require(Plugin.Core.Types.Background)

local withTheme = require(Plugin.Core.Consumers.withTheme)

local RoundButton = require(Plugin.Core.Components.RoundButton)

local FooterButton = Roact.PureComponent:extend("FooterButton")

function FooterButton:init(props)
	self.onMouseEnter = function(rbx, x, y)
		props.onHoverStarted(props.index)
	end

	self.onMouseLeave = function(rbx, x, y)
		props.onHoverEnded(props.index)
	end

	self.onMouseButton1Down = function(rbx, x, y)
		props.onClick(props.index)
	end
end

function FooterButton:render()
	return withTheme(function(theme)
		local props = self.props

		local index = props.index
		local name = props.name

		local isSelected = props.isSelected
		local isHovered = props.isHovered

		local footerTheme = theme.footer
		local buttonTheme = footerTheme.button

		return Roact.createElement(RoundButton, {
			AnchorPoint = Vector2.new(0, 0.5),
			LayoutOrder = index,
			Size = UDim2.new(0, 58, 1, 0),

			BackgroundColor3 = isSelected and buttonTheme.backgroundSelectedColor or buttonTheme.backgroundColor,
			BorderColor3 = (isSelected or isHovered) and buttonTheme.borderSelectedColor or buttonTheme.borderColor,

			[Roact.Event.MouseEnter] = self.onMouseEnter,
			[Roact.Event.MouseLeave] = self.onMouseLeave,
			[Roact.Event.MouseButton1Down] = self.onMouseButton1Down,
		}, {
			UIPadding = Roact.createElement("UIPadding", {
				PaddingBottom = UDim.new(0, 6),
				PaddingLeft = UDim.new(0, 6),
				PaddingRight = UDim.new(0, 6),
				PaddingTop = UDim.new(0, 6),
			}),

			Icon = Background.renderIcon(index, {
				AnchorPoint = Vector2.new(0, 0.5),
				Position = UDim2.new(0, 0, 0.5, 0),
				Size = UDim2.new(0, Constants.BACKGROUND_ICON_SIZE, 0, Constants.BACKGROUND_ICON_SIZE),
			}),

			TextLabel = Roact.createElement("TextLabel", {
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Position = UDim2.new(0, 14, 0, -1),
				Size = UDim2.new(1, -14, 1, 0),

				TextColor3 = isSelected and buttonTheme.textSelectedColor or buttonTheme.textColor,

				Font = Constants.FONT,
				Text = name,
				TextSize = Constants.FONT_SIZE_SMALL,
			}),
		})
	end)
end

return FooterButton
