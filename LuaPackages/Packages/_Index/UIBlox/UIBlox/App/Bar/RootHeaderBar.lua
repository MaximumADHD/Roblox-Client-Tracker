local Bar = script.Parent
local App = Bar.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent
local Roact = require(Packages.Roact)
local t = require(Packages.t)

local withStyle = require(UIBlox.Core.Style.withStyle)
local getPageMargin = require(App.Container.getPageMargin)

local GenericTextLabel = require(UIBlox.Core.Text.GenericTextLabel.GenericTextLabel)

local ThreeSectionBar = require(UIBlox.Core.Bar.ThreeSectionBar)
local RootHeaderBar = Roact.PureComponent:extend("HeaderBar")

RootHeaderBar.validateProps = t.strictInterface({
	-- The title of the screen
	title = t.string,

	-- How tall the bar is
	barHeight = t.optional(t.number),

	-- A function that returns a Roact Component, used for customizing buttons on the right side of the bar
	renderRight = t.optional(t.callback),
})

-- default values are taken from Abstract
RootHeaderBar.defaultProps = {
	barHeight = 32,
	renderRight = function()
		return nil
	end,
}

function RootHeaderBar:init()
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

function RootHeaderBar:render()
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
				renderCenter = function()
					return Roact.createFragment({
						Padding = Roact.createElement("UIPadding", {
							PaddingLeft = UDim.new(0, self.state.margin),
						}),
						Text = Roact.createElement(GenericTextLabel, {
							Size = UDim2.new(1, 0, 0, 32),
							Text = self.props.title,
							TextTruncate = Enum.TextTruncate.AtEnd,
							TextXAlignment = Enum.TextXAlignment.Left,
							fontStyle = font.Header1,
							colorStyle = theme.TextEmphasis,
						})
					})
				end,

				marginRight = self.state.margin,
				contentPaddingRight = UDim.new(0, 12),
				renderRight = self.props.renderRight,
			})
		})
	end)
end

return RootHeaderBar
