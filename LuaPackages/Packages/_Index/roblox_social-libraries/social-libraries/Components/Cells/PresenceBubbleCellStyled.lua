local SocialLibraries = script:FindFirstAncestor("social-libraries")
local dependencies = require(SocialLibraries.dependencies)

local Roact = dependencies.Roact
local PresenceBubbleCell = require(script.Parent.PresenceBubbleCell)
local TestStyle = require(script:FindFirstAncestor("Components").Style.TestStyle)

local StyledCell = Roact.PureComponent:extend("StyledCell")

StyledCell.defaultProps = {
	Size = UDim2.new(1, 0, 1, 0),
	avatarCirclePresenceImage = nil,
	subTitleText = nil,
	titleText = "TestUser",
	secondaryTitleText = nil,

	thumbnails = {},
	-- childWidth: children will be mounted on the right side of the Cell
	childWidth = 0,
	-- onActivated: action when you tap on the banner itself
	onActivated = nil,
	-- onCircleActivated: action when you tap on the ConversationThumbnail
	onCircleActivated = nil,
	-- style: style object provided by a style consumer
	style = TestStyle,

	showDivider = true,
	boldTitle = true,
	isLoading = false,
}

function StyledCell:render()
	local style = self.props.style
	local theme = style.Theme
	local font = style.Font

	return Roact.createElement(PresenceBubbleCell, {
		childWidth = self.props.childWidth,
		titleText = self.props.titleText,
		secondaryTitleText = self.props.secondaryTitleText,
		subTitleText = self.props.subTitleText,
		avatarCirclePresenceImage = self.props.avatarCirclePresenceImage,
		thumbnails = self.props.thumbnails,
		onActivated = self.props.onActivated,
		onCircleActivated = self.props.onCircleActivated,
		Size = self.props.Size,
		isLoading = self.props.isLoading,

		-- style properties
		BackgroundColor3 = theme.BackgroundDefault.Color,
		BackgroundTransparency = theme.BackgroundDefault.Transparency,
		onPressedBackgroundColor3 = theme.BackgroundOnPress.Color,
		onPressedBackgroundTransparency = theme.BackgroundOnPress.Transparency,

		avatarCircleBackgroundColor3 = theme.PlaceHolder.Color,
		avatarCircleDividerColor3 = theme.PlaceHolder.Color,

		subTitleTextFont = font.CaptionBody.Font,
		subTitleTextTransparency = theme.TextDefault.Transparency,
		subTitleTextColor3 = theme.TextDefault.Color,
		subTitleTextSize = font.CaptionBody.RelativeSize * font.BaseSize,

		titleFont = font.Header2.Font,
		titleTextTransparency = self.props.boldTitle and theme.TextEmphasis.Transparency or theme.TextDefault.Transparency,
		titleTextColor3 = self.props.boldTitle and theme.TextEmphasis.Color or theme.TextDefault.Color,
		titleTextSize = font.Header2.RelativeSize * font.BaseSize,

		secondaryTitleFont = font.Header2.Font,
		secondaryTitleTextTransparency = theme.TextMuted.Transparency,
		secondaryTitleTextColor3 = theme.TextMuted.Color,
		secondaryTitleTextSize = font.Header2.RelativeSize * font.BaseSize,

		showDivider = self.props.showDivider,
		dividerTransparency = theme.Divider.Transparency,
		dividerColor3 = theme.Divider.Color,
	}, self.props[Roact.Children])
end

return StyledCell
