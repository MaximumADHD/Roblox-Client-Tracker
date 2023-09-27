--!nonstrict
local Indicator = script.Parent
local App = Indicator.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local UIBloxConfig = require(UIBlox.UIBloxConfig)

local Roact = require(Packages.Roact)
local t = require(Packages.t)
local ImageSetLabel = require(UIBlox.Core.ImageSet.ImageSetComponent).Label
local Cryo = require(Packages.Cryo)

local StyleTypes = require(App.Style.StyleTypes)
local validateColorInfo = require(UIBlox.Core.Style.Validator.validateColorInfo)

local Images = require(App.ImageSet.Images)
local IconButton = require(App.Button.IconButton)
local getIconSize = require(App.ImageSet.getIconSize)
local IconSize = require(App.ImageSet.Enum.IconSize)
local GenericTextLabel = require(UIBlox.Core.Text.GenericTextLabel.GenericTextLabel)
local withStyle = require(UIBlox.Core.Style.withStyle)
local enumerateValidator = require(UIBlox.Utility.enumerateValidator)
local VoteStates = require(Indicator.Enum.VoteStates)

local useNewGenericTextLabelProps = UIBloxConfig.useNewGenericTextLabelProps

local ICON_RATING = Images["icons/status/games/rating_large"]
local ICON_VOTE_DOWN_OFF = Images["icons/actions/vote/voteDownOff"]
local ICON_VOTE_DOWN_ON = Images["icons/actions/vote/voteDownOn"]
local ICON_VOTE_UP_OFF = Images["icons/actions/vote/voteUpOff"]
local ICON_VOTE_UP_ON = Images["icons/actions/vote/voteUpOn"]

export type StyleProps = {
	-- Padding top of container
	containerSpacingTop: number?,
	-- Padding right of container
	containerSpacingTrailing: number?,
	-- Padding bottom of container
	containerSpacingBottom: number?,
	-- Padding left of container
	containerSpacingLeading: number?,
	-- Corner radius of container
	containerBorderRadius: number?,
	-- Color of container background
	containerBackgroundColor: StyleTypes.ThemeItem?,
	-- Spacing between stat widget and vote buttons in container
	containerGap: number?,
	-- Spacing between icon and data in stat widget
	statWidgetContainerGap: number?,
	-- Size of stat widget icon
	statWidgetIconSize: number?,
	-- Color of stat widget icon
	statWidgetIconContentColor: StyleTypes.ThemeItem?,
	-- Spacing between number and label in stat widget
	statWidgetDataGap: number?,
	-- Color of stat widget number
	statWidgetDataContentColor: StyleTypes.ThemeItem?,
	-- Color of stat widget label
	statWidgetDataLabelContentColor: StyleTypes.ThemeItem?,
	-- Spacing between vote buttons
	buttonGroupGap: number?,
	-- Size of vote buttons
	buttonSize: number?,
	-- The icon size in vote buttons. If icon size is larger, it will be the actual button size.
	buttonIconSizeEnum: number?,
}

local defaultStyleProps = {
	containerSpacingTop = 12,
	containerSpacingTrailing = 12,
	containerSpacingBottom = 12,
	containerSpacingLeading = 12,
	containerBorderRadius = 8,
	containerGap = 12,

	statWidgetContainerGap = 12,
	statWidgetIconSize = getIconSize(IconSize.Large),
	statWidgetDataGap = 0,

	buttonGroupGap = 12,
	buttonSize = 44,
	buttonIconSizeEnum = IconSize.Medium,
}

local RateCount = Roact.PureComponent:extend("RateCount")

RateCount.validateProps = t.strictInterface({
	position = t.optional(t.UDim2),
	layoutOrder = t.optional(t.integer),
	anchorPoint = t.optional(t.Vector2),
	width = t.optional(t.integer),
	height = t.optional(t.integer),
	-- The text to show rate information of the experience (rate percentage, etc)
	rateText = t.optional(t.string),
	-- The text to show extra rate information of the experience (votes count, etc)
	rateLabel = t.optional(t.string),
	--[[
		The state to determine how the button shows

			* `VoteStates.notVoted`: both VoteDown and VoteUp button are in off state
			* `VoteStates.votedDown`: VoteDown button is on and VoteUp button is off
			* `VoteStates.votedUp`: VoteDown button is off and VoteUp button is on
	]]
	voteState = t.optional(enumerateValidator(VoteStates)),
	-- A callback function for the click event on vote down button
	onVoteDownActivated = t.optional(t.callback),
	-- A callback function for the click event on vote up button
	onVoteUpActivated = t.optional(t.callback),
	-- Props to style the component
	styleProps = t.optional(t.strictInterface({
		-- Padding top of container.
		containerSpacingTop = t.optional(t.integer),
		-- Padding right of container.
		containerSpacingTrailing = t.optional(t.integer),
		-- Padding bottom of container.
		containerSpacingBottom = t.optional(t.integer),
		-- Padding left of container.
		containerSpacingLeading = t.optional(t.integer),
		-- Corner radius of container.
		containerBorderRadius = t.optional(t.integer),
		-- Color of container background.
		containerBackgroundColor = t.optional(validateColorInfo),
		-- Spacing between stat widget and vote buttons in container.
		containerGap = t.optional(t.integer),

		-- Spacing between icon and data in stat widget.
		statWidgetContainerGap = t.optional(t.integer),
		-- Size of stat widget icon.
		statWidgetIconSize = t.optional(t.integer),
		-- Color of stat widget icon.
		statWidgetIconContentColor = t.optional(validateColorInfo),
		-- Spacing between number and label in stat widget.
		statWidgetDataGap = t.optional(t.integer),
		-- Color of stat widget number.
		statWidgetDataContentColor = t.optional(validateColorInfo),
		-- Color of stat widget label.
		statWidgetDataLabelContentColor = t.optional(validateColorInfo),

		-- Spacing between vote buttons.
		buttonGroupGap = t.optional(t.integer),
		-- Size of vote buttons.
		buttonSize = t.optional(t.integer),
		-- The icon size in vote buttons. If icon size is larger, it will be used as actual button size.
		buttonIconSizeEnum = t.optional(enumerateValidator(IconSize)),
	})),
})

RateCount.defaultProps = {
	height = 72,
	rateText = "",
	rateLabel = "",
	voteState = VoteStates.notVoted,
}

function RateCount:init()
	self.onVoteDownActivated = function()
		local onVoteDownActivated = self.props.onVoteDownActivated
		if onVoteDownActivated then
			onVoteDownActivated()
		end
	end

	self.onVoteUpActivated = function()
		local onVoteUpActivated = self.props.onVoteUpActivated
		if onVoteUpActivated then
			onVoteUpActivated()
		end
	end
end

function RateCount:render()
	local position = self.props.position
	local layoutOrder = self.props.layoutOrder
	local anchorPoint = self.props.anchorPoint

	local width = self.props.width
	local height = self.props.height
	local size
	if width then
		size = UDim2.new(0, width, 0, height)
	else
		size = UDim2.new(1, 0, 0, height)
	end

	local rateText = self.props.rateText
	local rateLabel = self.props.rateLabel
	local voteState = self.props.voteState
	local isVoteDownChecked = voteState == VoteStates.votedDown
	local isVoteUpChecked = voteState == VoteStates.votedUp

	return withStyle(function(style)
		local styleProps = Cryo.Dictionary.join(defaultStyleProps, self.props.styleProps or {})
		local containerSpacingLeading = styleProps.containerSpacingLeading
		local containerSpacingTrailing = styleProps.containerSpacingTrailing
		local containerBorderRadius = styleProps.containerBorderRadius
		local containerBackgroundColor = styleProps.containerBackgroundColor or style.Theme.UIEmphasis
		local containerGap = styleProps.containerGap

		local statWidgetContainerGap = styleProps.statWidgetContainerGap
		local statWidgetIconSize = styleProps.statWidgetIconSize
		local statWidgetIconContentColor = styleProps.statWidgetIconContentColor or style.Theme.IconEmphasis
		local statWidgetDataGap = styleProps.statWidgetDataGap
		local statWidgetDataContentColor = styleProps.statWidgetDataContentColor or style.Theme.TextEmphasis
		local statWidgetDataLabelContentColor = styleProps.statWidgetDataLabelContentColor or style.Theme.TextEmphasis

		local buttonGroupGap = styleProps.buttonGroupGap
		local buttonSize = styleProps.buttonSize
		local buttonIconSizeEnum = styleProps.buttonIconSizeEnum
		local iconButtonSize = if UIBloxConfig.useTokensSizeInIconButton
			then math.max(getIconSize(buttonIconSizeEnum, style), buttonSize)
			else buttonSize

		local textSectionSizeOffset = -(
			statWidgetIconSize
			+ iconButtonSize * 2
			+ statWidgetContainerGap
			+ containerGap
			+ buttonGroupGap
		)

		return Roact.createElement("Frame", {
			Size = size,
			Position = position,
			AnchorPoint = anchorPoint,
			BackgroundColor3 = containerBackgroundColor.Color,
			BackgroundTransparency = containerBackgroundColor.Transparency,
			BorderSizePixel = 0,
			LayoutOrder = layoutOrder,
		}, {
			RoundCorner = Roact.createElement("UICorner", {
				CornerRadius = UDim.new(0, containerBorderRadius),
			}),
			ListLayout = Roact.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Horizontal,
				HorizontalAlignment = Enum.HorizontalAlignment.Left,
				VerticalAlignment = Enum.VerticalAlignment.Center,
				SortOrder = Enum.SortOrder.LayoutOrder,
				Padding = UDim.new(0, containerGap),
			}),
			Padding = Roact.createElement("UIPadding", {
				PaddingLeft = UDim.new(0, containerSpacingLeading),
				PaddingRight = UDim.new(0, containerSpacingTrailing),
			}),
			Icon = Roact.createElement(ImageSetLabel, {
				LayoutOrder = 1,
				Size = UDim2.fromOffset(statWidgetIconSize, statWidgetIconSize),
				Image = ICON_RATING,
				ImageColor3 = statWidgetIconContentColor.Color,
				ImageTransparency = statWidgetIconContentColor.Transparency,
				BackgroundTransparency = 1,
			}),
			TextSection = Roact.createElement("Frame", {
				LayoutOrder = 2,
				Size = UDim2.new(1, textSectionSizeOffset, 0, 0),
				BackgroundTransparency = 1,
				AutomaticSize = Enum.AutomaticSize.Y,
			}, {
				ListLayout = Roact.createElement("UIListLayout", {
					SortOrder = Enum.SortOrder.LayoutOrder,
					FillDirection = Enum.FillDirection.Vertical,
					Padding = UDim.new(0, statWidgetDataGap),
				}),
				RateText = Roact.createElement(GenericTextLabel, {
					LayoutOrder = 1,
					AutomaticSize = if useNewGenericTextLabelProps then Enum.AutomaticSize.XY else Enum.AutomaticSize.Y,
					Text = rateText,
					colorStyle = statWidgetDataContentColor,
					fontStyle = style.Font.Title,
					BackgroundTransparency = 1,
				}),
				RateLabel = Roact.createElement(GenericTextLabel, {
					LayoutOrder = 2,
					AutomaticSize = if useNewGenericTextLabelProps then Enum.AutomaticSize.XY else Enum.AutomaticSize.Y,
					Text = rateLabel,
					colorStyle = statWidgetDataLabelContentColor,
					fontStyle = style.Font.CaptionHeader,
					BackgroundTransparency = 1,
				}),
			}),
			VoteDown = Roact.createElement(IconButton, {
				layoutOrder = 3,
				size = UDim2.fromOffset(buttonSize, buttonSize),
				icon = isVoteDownChecked and ICON_VOTE_DOWN_ON or ICON_VOTE_DOWN_OFF,
				iconColor3 = style.Theme.IconEmphasis.Color,
				iconSize = if UIBloxConfig.useTokensSizeInIconButton then buttonIconSizeEnum else nil,
				onActivated = self.onVoteDownActivated,
				showBackground = true,
			}),
			VoteUp = Roact.createElement(IconButton, {
				layoutOrder = 4,
				size = UDim2.fromOffset(buttonSize, buttonSize),
				icon = isVoteUpChecked and ICON_VOTE_UP_ON or ICON_VOTE_UP_OFF,
				iconColor3 = style.Theme.IconEmphasis.Color,
				iconSize = if UIBloxConfig.useTokensSizeInIconButton then buttonIconSizeEnum else nil,
				onActivated = self.onVoteUpActivated,
				showBackground = true,
			}),
		})
	end)
end

return RateCount
