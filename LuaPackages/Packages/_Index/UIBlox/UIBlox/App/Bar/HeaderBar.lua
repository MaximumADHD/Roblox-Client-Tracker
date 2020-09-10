local Bar = script.Parent
local App = Bar.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent
local Roact = require(Packages.Roact)
local t = require(Packages.t)

local Images = require(App.ImageSet.Images)
local IconSize = require(App.ImageSet.Enum.IconSize)
local getPageMargin = require(App.Container.getPageMargin)
local withStyle = require(UIBlox.Core.Style.withStyle)

local IconButton = require(UIBlox.App.Button.IconButton)
local GenericTextLabel = require(UIBlox.Core.Text.GenericTextLabel.GenericTextLabel)
local GetTextSize = require(UIBlox.Core.Text.GetTextSize)

local ThreeSectionBar = require(UIBlox.Core.Bar.ThreeSectionBar)
local HeaderBar = Roact.PureComponent:extend("HeaderBar")
HeaderBar.renderLeft = {
	backButton = function(onActivated)
		return function(_)
			return Roact.createElement(IconButton, {
				size = UDim2.fromOffset(0, 0),
				iconSize = IconSize.Medium,
				icon = Images["icons/navigation/pushBack"],
				onActivated = onActivated,
			})
		end
	end,
}

HeaderBar.validateProps = t.strictInterface({
	-- The title of the screen
	title = t.string,

	-- The function that is called when the back button is clicked
	onBack = t.optional(t.callback),

	-- How tall the bar is
	barHeight = t.optional(t.number),

	-- How much spacing between elements to allow on the right side of the bar
	contentPaddingRight = t.optional(t.UDim),

	-- A function that returns a Roact Component, used for customizing buttons on the right side of the bar
	renderRight = t.optional(t.callback),
	renderLeft = t.optional(t.callback),

})

-- default values are taken from Abstract
HeaderBar.defaultProps = {
	barHeight = 48,
	contentPaddingRight = UDim.new(0, 12),
	renderRight = function()
		return nil
	end,
	renderLeft = function()
		return nil
	end
}

function HeaderBar:init()
	self.state = {
		margin = 0
	}

	self.onResize = function(rbx)
		local margin = getPageMargin(rbx.AbsoluteSize.X)
		self:setState({
			margin = margin
		})
	end
end

function HeaderBar:render()
	return withStyle(function(style)
		local theme = style.Theme
		local font = style.Font

		local centerTextFontStyle = font.Header1
		local centerTextSize = centerTextFontStyle.RelativeSize * font.BaseSize

		local estimatedCenterWidth = GetTextSize(
			self.props.title,
			centerTextSize,
			centerTextFontStyle.Font,
			Vector2.new(1000, 1000)
		).X

		return Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 0, self.props.barHeight),
			[Roact.Change.AbsoluteSize] = self.onResize,
		}, {
			ThreeSectionBar = Roact.createElement(ThreeSectionBar, {
				BackgroundTransparency = theme.BackgroundDefault.Transparency,
				BackgroundColor3 = theme.BackgroundDefault.Color,

				barHeight = self.props.barHeight,
				marginLeft = self.state.margin,
				renderLeft = self.props.renderLeft,
				renderCenter = function()
					return Roact.createElement(GenericTextLabel, {
						ClipsDescendants = true,
						Size = UDim2.new(1, 0, 0, centerTextSize),
						Text = self.props.title,
						TextTruncate = Enum.TextTruncate.AtEnd,
						TextWrapped = false,
						fontStyle = centerTextFontStyle,
						colorStyle = theme.TextEmphasis,
					})
				end,
				estimatedCenterWidth = estimatedCenterWidth,
				marginRight = self.state.margin,
				contentPaddingRight = self.props.contentPaddingRight,
				renderRight = self.props.renderRight,
			})
		})
	end)
end

return HeaderBar
