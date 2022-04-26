local DetailsPage = script.Parent
local Template = DetailsPage.Parent
local App = Template.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local withStyle = require(UIBlox.Core.Style.withStyle)

local StyledTextLabel = require(App.Text.StyledTextLabel)

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

function DetailsPageTitleContent:render()
	return withStyle(function(style)
		local theme = style.Theme
		local font = style.Font

		return Roact.createElement("Frame", {
			Size = UDim2.fromScale(1, 0),
			BackgroundTransparency = 1,
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
				fontStyle = font.Title,
				colorStyle = theme.TextEmphasis,
				automaticSize = Enum.AutomaticSize.XY,
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
