--!nonstrict
local DetailsPage = script.Parent
local Template = DetailsPage.Parent
local App = Template.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local withStyle = require(UIBlox.Core.Style.withStyle)

local StyledTextLabel = require(App.Text.StyledTextLabel)
local GetTextSize = require(UIBlox.Core.Text.GetTextSize)
local TEXT_TITLE_MAX_LINE_NUMBER = 2
local TEXT_MAX_BOUND = 10000
local DEFAULT_LINE_HEIGHT = 1.0

local Roact = require(Packages.Roact)
local t = require(Packages.t)

local DetailsPageTitleContent = Roact.PureComponent:extend("DetailsPageTitleContent")

DetailsPageTitleContent.validateProps = t.strictInterface({
	titleText = t.optional(t.string),
	subTitleText = t.optional(t.string),
	renderInfoContent = t.optional(t.callback),
	layoutOrder = t.optional(t.number),
	verticalAlignment = t.optional(t.enum(Enum.VerticalAlignment)),
})

function DetailsPageTitleContent:init()
	self.state = {
		containerWidth = nil,
	}
	self.onContainerSizeChange = function(rbx)
		self:setState(function(prevState, props)
			return {
				containerWidth = rbx.AbsoluteSize.X,
			}
		end)
	end
	self.getTextSize = function(text, fontStyle, style)
		local baseSize = style.Font.BaseSize
		local fontSize = fontStyle.RelativeSize * baseSize
		local bounds = Vector2.new(TEXT_MAX_BOUND, TEXT_MAX_BOUND)
		return GetTextSize(text, fontSize, fontStyle.Font, bounds)
	end
end

function DetailsPageTitleContent:render()
	return withStyle(function(style)
		local theme = style.Theme
		local font = style.Font
		local titleSize = UDim2.new(0, 0, 1, 0)
		if self.props.titleText then
			local titleTextSize = self.getTextSize(self.props.titleText, font.Title, style)
			local titleTextLineHeight = titleTextSize.Y * DEFAULT_LINE_HEIGHT
			if self.state.containerWidth ~= nil and titleTextSize.X >= self.state.containerWidth then
				titleSize = UDim2.new(0, 0, 0, titleTextLineHeight * TEXT_TITLE_MAX_LINE_NUMBER)
			else
				titleSize = UDim2.new(0, 0, 0, titleTextLineHeight)
			end
		end
		return Roact.createElement("Frame", {
			Size = UDim2.fromScale(1, 0),
			BackgroundTransparency = 1,
			[Roact.Change.AbsoluteSize] = self.onContainerSizeChange,
			AutomaticSize = Enum.AutomaticSize.Y,
			LayoutOrder = self.props.layoutOrder,
		}, {
			ListLayout = Roact.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				FillDirection = Enum.FillDirection.Vertical,
				VerticalAlignment = self.props.verticalAlignment,
			}),
			Title = self.props.titleText and Roact.createElement(StyledTextLabel, {
				text = self.props.titleText,
				size = titleSize,
				automaticSize = Enum.AutomaticSize.X,
				fontStyle = font.Title,
				colorStyle = theme.TextEmphasis,
				textTruncate = Enum.TextTruncate.AtEnd,
				lineHeight = DEFAULT_LINE_HEIGHT,
				fluidSizing = false,
				layoutOrder = 1,
				richText = false,
			}) or nil,
			SubTitle = self.props.subTitleText and Roact.createElement(StyledTextLabel, {
				text = self.props.subTitleText,
				fontStyle = font.Header2,
				colorStyle = theme.TextMuted,
				automaticSize = Enum.AutomaticSize.XY,
				layoutOrder = 2,
				richText = false,
			}) or nil,
			CustomContentComponentFrame = self.props.renderInfoContent and Roact.createElement("Frame", {
				Size = UDim2.fromScale(1, 0),
				AutomaticSize = Enum.AutomaticSize.Y,
				BackgroundTransparency = 1,
				LayoutOrder = 3,
			}, {
				CustomContent = self.props.renderInfoContent(),
			}) or nil,
		})
	end)
end

return DetailsPageTitleContent
