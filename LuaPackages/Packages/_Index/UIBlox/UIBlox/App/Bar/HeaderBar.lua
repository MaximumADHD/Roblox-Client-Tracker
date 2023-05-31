--!nonstrict
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

local PADDING_AROUND_DIVIDER = 12

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
	-- The title text for the title bar
	title = t.optional(t.string),

	-- The value for the side margins
	margin = t.optional(t.number),

	-- Padding around the items from renderRight
	contentPaddingRight = t.optional(t.UDim),

	-- The height of the bar
	barHeight = t.optional(t.number),

	-- A function that returns a Roact Component, used for customizing buttons on the right side of the bar
	renderRight = t.optional(t.callback),

	-- A function that returns a Roact Component, used for customizing, e.g. back button, on the left side of the bar. If this does not exist, the bar will appear as a root HeaderBar and will increase the size of the title and place it to the left
	renderLeft = t.optional(t.callback),

	-- A function that returns a Roact Component, used for containing, e.g. search bar, on the center of the bar
	renderCenter = t.optional(t.callback),

	-- Background transparency of the bar
	backgroundTransparency = t.optional(t.number),

	-- Add an invisible button to the bar to capture click event
	onHeaderActivated = t.optional(t.callback),

	-- An optional cache key, used when wrapping HeaderBar with React.memo
	memoKey = t.optional(t.number),

	-- An optional boolean that, when true, applies secondary header bar styling (smaller font, vertical divider)
	isSecondary = t.optional(t.boolean),

	-- An optional boolean that, when true, hides secondary left item (i.e. title, divider, and renderLeft prop)
	shouldHideSecondaryLeftItem = t.optional(t.boolean),
})

-- default values are taken from Abstract
HeaderBar.defaultProps = {
	barHeight = 48,
	title = "",
	isSecondary = false,
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
					}, props[Roact.Children]),
				})
			end
		end

		if
			self.props.isSecondary
			and not isRoot
			and not self.props.shouldHideSecondaryLeftItem
			and string.len(self.props.title) > 0
		then
			local textFontStyle = font.Header2
			local textSize = textFontStyle.RelativeSize * font.BaseSize

			renderLeft = function()
				return Roact.createFragment({
					Text = Roact.createElement("Frame", {
						Size = UDim2.new(1, 0, 0, textSize),
						BackgroundTransparency = 1,
						Transparency = 1,
					}, {
						Layout = Roact.createElement("UIListLayout", {
							SortOrder = Enum.SortOrder.LayoutOrder,
							FillDirection = Enum.FillDirection.Horizontal,
							VerticalAlignment = Enum.VerticalAlignment.Center,
							Padding = UDim.new(0, PADDING_AROUND_DIVIDER),
						}),
						renderLeft = self.props.renderLeft(self.props),
						Divider = Roact.createElement("Frame", {
							BackgroundColor3 = theme.Divider.Color,
							BackgroundTransparency = theme.Divider.Transparency,
							BorderSizePixel = 0,
							Size = UDim2.new(0, 1, 1, 0),
							LayoutOrder = 1,
						}),
						TextLabel = Roact.createElement(GenericTextLabel, {
							ClipsDescendants = true,
							Text = self.props.title,
							TextTruncate = Enum.TextTruncate.AtEnd,
							TextWrapped = false,
							TextXAlignment = Enum.TextXAlignment.Left,
							fontStyle = textFontStyle,
							colorStyle = theme.TextEmphasis,
							LayoutOrder = 2,
						}),
					}),
				})
			end
		end

		-- Make center fixed-width components in the center, e.g search bar
		if renderLeft and renderCenter and renderRight then
			estimatedCenterWidth = 0
		end

		if not renderCenter and not isRoot and not self.props.isSecondary then
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

			estimatedCenterWidth =
				GetTextSize(self.props.title, centerTextSize, centerTextFontStyle.Font, Vector2.new(1000, 1000)).X
		end

		return Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 0, self.props.barHeight),
			[Roact.Change.AbsoluteSize] = self.onResize,
		}, {
			HeaderClickArea = self.props.onHeaderActivated and Roact.createElement("TextButton", {
				AutoButtonColor = false,
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Size = UDim2.new(1, 0, 1, 0),
				Selectable = false,
				[Roact.Event.Activated] = self.props.onHeaderActivated,
				ZIndex = 0,
			}) or nil,
			ThreeSectionBar = Roact.createElement(ThreeSectionBar, {
				BackgroundTransparency = self.props.backgroundTransparency or theme.BackgroundDefault.Transparency,
				BackgroundColor3 = theme.BackgroundDefault.Color,
				barHeight = self.props.barHeight,
				marginLeft = self.props.margin or self.state.margin,
				marginRight = self.props.margin or self.state.margin,
				renderLeft = renderLeft,
				renderCenter = renderCenter,
				estimatedCenterWidth = estimatedCenterWidth,
				contentPaddingRight = self.props.contentPaddingRight
					or UDim.new(0, isRoot and 0 or PADDING_AROUND_DIVIDER),
				renderRight = renderRight,
			}),
		})
	end)
end

function HeaderBar:didMount()
	if self.ref.current then
		self.onResize(self.ref.current)
	end
end

return HeaderBar
