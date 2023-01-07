local FriendsCarousel = script.Parent.Parent.Parent
local dependencies = require(FriendsCarousel.dependencies)
local Roact = dependencies.Roact
local withLocalization = dependencies.withLocalization
local memoize = dependencies.memoize
local Text = dependencies.Text

local getUserRecommendationContext = require(script.Parent.getUserRecommendationContext)
local getCorrectUserPresence = require(script.Parent.getCorrectUserPresence)
local getUserPresenceIcon = require(script.Parent.getUserPresenceIcon)
local getUserPresenceLabel = require(FriendsCarousel.Utils.getUserPresenceLabel)
local LocalTypes = require(FriendsCarousel.Common.LocalTypes)

local UIBlox = dependencies.UIBlox
local StyledTextLabel = UIBlox.App.Text.StyledTextLabel
local Style = UIBlox.Style
local ImageSetLabel = UIBlox.Core.ImageSet.Label
local Images = UIBlox.App.ImageSet.Images
local UIBloxIconSize = UIBlox.App.Constant.IconSize

local CarouselUserContextualInfo = Roact.PureComponent:extend("CarouselUserContextualInfo")

export type Props = {
	user: LocalTypes.User,
	layoutOrder: number,
	tileSize: number,
	maxNumberOfLines: number?,
}

local LINES_MAX: number = 2
local PADDING: number = 2

CarouselUserContextualInfo.defaultProps = {
	maxNumberOfLines = LINES_MAX,
}

function CarouselUserContextualInfo:init()
	self.getTextHeight = memoize(function(text, fontType, fontSize): number
		return Text.GetTextHeight(text, fontType, fontSize)
	end)

	self.getContextualIconAndText = memoize(
		function(
			user: LocalTypes.User,
			theme: dependencies.UIBloxTheme,
			font: dependencies.UIBloxFontPalette
		): (getUserPresenceIcon.Icon, getUserPresenceLabel.Label)
			if user.isFriendWithUser then
				local friend: LocalTypes.Friend = user :: any
				local presence: Enum = getCorrectUserPresence(friend)
				local icon = getUserPresenceIcon({
					presence = presence,
					theme = theme,
				})
				local label = getUserPresenceLabel({
					presence = presence,
					lastLocation = friend.lastLocation,
					font = font,
					theme = theme,
				})
				return icon, label
			else
				local recommendation: LocalTypes.Recommendation = user :: any
				return getUserRecommendationContext(recommendation)
			end
		end
	)
end

function CarouselUserContextualInfo:render()
	local props: Props = self.props

	return Style.withStyle(function(style)
		local theme: dependencies.UIBloxTheme = style.Theme
		local font: dependencies.UIBloxFontPalette = style.Font

		local icon, label = self.getContextualIconAndText(props.user, theme, font)

		return withLocalization({
			labelText = label.textKey,
		})(function(localizedStrings)
			local text = if label.textKey then localizedStrings.labelText else label.text
			if label.formatter then
				text = label.formatter(text)
			end
			local labelFont = label.font or font.CaptionBody

			return Roact.createElement("Frame", {
				LayoutOrder = props.layoutOrder,
				BackgroundTransparency = 1,
			}, {
				UIListLayout = Roact.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Horizontal,
					SortOrder = Enum.SortOrder.LayoutOrder,
					Padding = UDim.new(0, PADDING),
				}),
				IconFrame = icon and icon.path and Roact.createElement("Frame", {
					Size = UDim2.fromOffset(UIBloxIconSize.Small, UIBloxIconSize.Small),
					BackgroundTransparency = 1,
				}, {
					layout = Roact.createElement("UIListLayout", {
						VerticalAlignment = Enum.VerticalAlignment.Top,
						HorizontalAlignment = Enum.HorizontalAlignment.Center,
					}),
					PresenceIcon = Roact.createElement(ImageSetLabel, {
						LayoutOrder = 1,
						BackgroundTransparency = 1,
						Image = Images[icon.path],
						ImageColor3 = icon.color or theme.IconDefault.Color,
						ImageTransparency = icon.transparency or theme.IconDefault.Transparency,
						Size = icon.size or UDim2.fromOffset(UIBloxIconSize.Small, UIBloxIconSize.Small),
						AnchorPoint = Vector2.new(0.5, 0.5),
						Position = UDim2.fromScale(0.5, 0.5),
					}),
				}) or nil,
				ContextualText = text and Roact.createElement(StyledTextLabel, {
					layoutOrder = 2,
					size = UDim2.fromOffset(
						icon and props.tileSize - (UIBloxIconSize.Small + PADDING) or props.tileSize,
						self.getTextHeight(text, labelFont.Font, font.BaseSize * labelFont.RelativeSize)
							* props.maxNumberOfLines
					),
					lineHeight = 1,
					text = text,
					textXAlignment = Enum.TextXAlignment.Left,
					textYAlignment = Enum.TextYAlignment.Top,
					textTruncate = Enum.TextTruncate.AtEnd,
					fontStyle = labelFont,
					colorStyle = label.colorStyle or theme.SecondaryContent,
					fluidSizing = false,
					richText = false,
				}) or nil,
			})
		end)
	end)
end

return CarouselUserContextualInfo
