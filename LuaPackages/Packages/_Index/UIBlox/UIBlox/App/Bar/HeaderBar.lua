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
	title = t.optional(t.string),

	-- How tall the bar is
	barHeight = t.optional(t.number),

	-- A function that returns a Roact Component, used for customizing buttons on the right side of the bar
	renderRight = t.optional(t.callback),

	-- A function that returns a Roact Component, used for customizing, e.g. back button, on the left side of the bar
	renderLeft = t.optional(t.callback),

	-- A function that returns a Roact Component, used for containing, e.g. search bar, on the center of the bar
	renderCenter = t.optional(t.callback),

	-- Background transparency
	backgroundTransparency = t.optional(t.number),
})

-- default values are taken from Abstract
HeaderBar.defaultProps = {
	barHeight = 48,
	title = "",
}

function HeaderBar:init()
	self.state = {
		margin = 0,
	}

	self.onResize = function(rbx)
		local margin = getPageMargin(rbx.AbsoluteSize.X)
		self:setState({
			margin = margin,
		})
	end
	self.ref = Roact.createRef()
end

function HeaderBar:render()
	return withStyle(function(style)
		local theme = style.Theme
		local font = style.Font

		local renderLeft = self.props.renderLeft
		local isRoot = renderLeft == nil or renderLeft == Roact.None
		local renderCenter = self.props.renderCenter
		local renderRight = self.props.renderRight
		local estimatedCenterWidth = math.huge

		if isRoot and string.len(self.props.title) > 0 then
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
			end
		end

		-- Make center fixed-width components in the center, e.g search bar
		if renderLeft and renderCenter and renderRight then
			estimatedCenterWidth = 0
		end

		if not renderCenter and not isRoot then
			local centerTextFontStyle = font.Header1
			local centerTextSize = centerTextFontStyle.RelativeSize * font.BaseSize
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
			end
			estimatedCenterWidth = GetTextSize(
				self.props.title,
				centerTextSize,
				centerTextFontStyle.Font,
				Vector2.new(1000, 1000)
			).X
		end

		return Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 0, self.props.barHeight),
			[Roact.Change.AbsoluteSize] = self.onResize,
		}, {
			ThreeSectionBar = Roact.createElement(ThreeSectionBar, {
				BackgroundTransparency = self.props.backgroundTransparency or theme.BackgroundDefault.Transparency,
				BackgroundColor3 = theme.BackgroundDefault.Color,
				barHeight = self.props.barHeight,
				marginLeft = self.state.margin,
				marginRight = self.state.margin,
				renderLeft = renderLeft,
				renderCenter = renderCenter,
				estimatedCenterWidth = estimatedCenterWidth,
				contentPaddingRight = UDim.new(0, isRoot and 0 or 12),
				renderRight = renderRight,
			})
		})
	end)
end

function HeaderBar:didMount()
	if self.ref.current then
		self.onResize(self.ref.current)
	end
end

return HeaderBar
