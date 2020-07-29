local Bar = script.Parent
local App = Bar.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent
local Roact = require(Packages.Roact)
local t = require(Packages.t)

local Images = require(App.ImageSet.Images)
local getIconSizeUDim2 = require(App.ImageSet.getIconSizeUDim2)
local IconSize = require(App.ImageSet.Enum.IconSize)
local getPageMargin = require(App.Container.getPageMargin)
local withStyle = require(UIBlox.Core.Style.withStyle)

local IconButton = require(UIBlox.Core.Button.IconButton)
local GenericTextLabel = require(UIBlox.Core.Text.GenericTextLabel.GenericTextLabel)

local ThreeSectionBar = require(UIBlox.Core.Bar.ThreeSectionBar)
local HeaderBar = Roact.PureComponent:extend("HeaderBar")

HeaderBar.validateProps = t.strictInterface({
	-- The title of the screen
	title = t.string,

	-- The function that is called when the back button is clicked
	onBack = t.callback,

	-- How tall the bar is
	barHeight = t.optional(t.number),

	-- A function that returns a Roact Component, used for customizing buttons on the right side of the bar
	renderRight = t.optional(t.callback),
})

-- default values are taken from Abstract
HeaderBar.defaultProps = {
	barHeight = 32,
	renderRight = function()
		return nil
	end,
}

local BACK_BUTTON_IMAGE = 'icons/navigation/pushBack'

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

	self.renderLeft = function()
		return Roact.createElement(IconButton, {
			size = getIconSizeUDim2(IconSize.Medium),
			icon = Images[BACK_BUTTON_IMAGE],
			onActivated = self.props.onBack,
			LayoutOrder = 2,
		})
	end
end

function HeaderBar:render()
	return withStyle(function(style)
		local theme = style.Theme
		local font = style.Font

		return Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, 0),
			[Roact.Change.AbsoluteSize] = self.onResize,
		}, {
			ThreeSectionBar = Roact.createElement(ThreeSectionBar, {
				BackgroundTransparency = theme.BackgroundUIContrast.Transparency,
				BackgroundColor3 = theme.BackgroundUIContrast.Color,

				barHeight = self.props.barHeight,
				marginLeft = self.state.margin,
				renderLeft = self.renderLeft,
				renderCenter = function()
					return Roact.createElement(GenericTextLabel, {
						Size = UDim2.new(1, 0, 1, 0),
						Text = self.props.title,
						TextTruncate = Enum.TextTruncate.AtEnd,
						fontStyle = font.Header1,
						colorStyle = theme.TextEmphasis,
					})
				end,
				marginRight = self.state.margin,
				contentPaddingRight = UDim.new(0, 12),
				renderRight = self.props.renderRight,
			})
		})
	end)
end

return HeaderBar
