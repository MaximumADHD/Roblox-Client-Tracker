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
	backgroundTransparency = t.optional(t.number),
})

RootHeaderBar.defaultProps = {
	barHeight = 64,
	renderRight = function()
		return nil
	end,
}

function RootHeaderBar:init()
	self:setState({
		margin = 0,
	})

	self.setPageMargin = function(rbx)
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
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 0, self.props.barHeight),
			[Roact.Change.AbsoluteSize] = self.setPageMargin,
		}, {
			ThreeSectionBar = Roact.createElement(ThreeSectionBar, {
				BackgroundTransparency = self.props.backgroundTransparency or theme.BackgroundDefault.Transparency,
				BackgroundColor3 = theme.BackgroundDefault.Color,

				barHeight = self.props.barHeight,
				contentPaddingRight = UDim.new(0, 0),

				marginLeft = self.state.margin,
				marginRight = self.state.margin,

				renderRight = self.props.renderRight,
				renderLeft = function(props)
					return Roact.createFragment({
						Text = Roact.createElement(GenericTextLabel, {
							fluidSizing = true,
							Text = self.props.title,
							TextTruncate = Enum.TextTruncate.AtEnd,
							TextXAlignment = Enum.TextXAlignment.Left,
							fontStyle = font.Title,
							colorStyle = theme.TextEmphasis,
						}, props[Roact.Children])
					})
				end,
			})
		})
	end)
end

return RootHeaderBar
