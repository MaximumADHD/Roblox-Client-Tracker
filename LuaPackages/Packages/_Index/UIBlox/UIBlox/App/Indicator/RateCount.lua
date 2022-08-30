local Indicator = script.Parent
local App = Indicator.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local Roact = require(Packages.Roact)
local t = require(Packages.t)
local ImageSetLabel = require(UIBlox.Core.ImageSet.ImageSetComponent).Label
local Images = require(App.ImageSet.Images)
local IconButton = require(App.Button.IconButton)
local getIconSize = require(App.ImageSet.getIconSize)
local IconSize = require(App.ImageSet.Enum.IconSize)
local GenericTextLabel = require(UIBlox.Core.Text.GenericTextLabel.GenericTextLabel)
local withStyle = require(UIBlox.Core.Style.withStyle)
local enumerateValidator = require(UIBlox.Utility.enumerateValidator)
local VoteStates = require(Indicator.Enum.VoteStates)

local RATINGS_HEIGHT = 72
local ICON_SIZE = getIconSize(IconSize.Large)
local BUTTON_SIZE = 44
local HORIZONTAL_PADDING = 12
local TEXT_SECTION_OFFSET = -(ICON_SIZE + BUTTON_SIZE * 2 + HORIZONTAL_PADDING * 3)

local ICON_RATING = Images["icons/status/games/rating_large"]
local ICON_VOTE_DOWN_OFF = Images["icons/actions/vote/voteDownOff"]
local ICON_VOTE_DOWN_ON = Images["icons/actions/vote/voteDownOn"]
local ICON_VOTE_UP_OFF = Images["icons/actions/vote/voteUpOff"]
local ICON_VOTE_UP_ON = Images["icons/actions/vote/voteUpOn"]

local RateCount = Roact.PureComponent:extend("RateCount")

RateCount.validateProps = t.strictInterface({
	position = t.optional(t.UDim2),
	layoutOrder = t.optional(t.integer),
	anchorPoint = t.optional(t.Vector2),
	width = t.optional(t.integer),
	rateText = t.optional(t.string),
	rateLabel = t.optional(t.string),
	voteState = t.optional(enumerateValidator(VoteStates)),
	onVoteDownActivated = t.optional(t.callback),
	onVoteUpActivated = t.optional(t.callback),
})

RateCount.defaultProps = {
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
	local size
	if width then
		size = UDim2.new(0, width, 0, RATINGS_HEIGHT)
	else
		size = UDim2.new(1, 0, 0, RATINGS_HEIGHT)
	end

	local rateText = self.props.rateText
	local rateLabel = self.props.rateLabel
	local voteState = self.props.voteState
	local isVoteDownChecked = voteState == VoteStates.votedDown
	local isVoteUpChecked = voteState == VoteStates.votedUp

	return withStyle(function(style)
		return Roact.createElement("Frame", {
			Size = size,
			Position = position,
			AnchorPoint = anchorPoint,
			BackgroundTransparency = style.Theme.UIEmphasis.Transparency,
			BorderSizePixel = 0,
			LayoutOrder = layoutOrder,
		}, {
			RoundCorner = Roact.createElement("UICorner", {
				CornerRadius = UDim.new(0, 8),
			}),
			ListLayout = Roact.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Horizontal,
				HorizontalAlignment = Enum.HorizontalAlignment.Left,
				VerticalAlignment = Enum.VerticalAlignment.Center,
				SortOrder = Enum.SortOrder.LayoutOrder,
				Padding = UDim.new(0, HORIZONTAL_PADDING),
			}),
			Padding = Roact.createElement("UIPadding", {
				PaddingLeft = UDim.new(0, HORIZONTAL_PADDING),
				PaddingRight = UDim.new(0, HORIZONTAL_PADDING),
			}),
			Icon = Roact.createElement(ImageSetLabel, {
				LayoutOrder = 1,
				Size = UDim2.fromOffset(ICON_SIZE, ICON_SIZE),
				Image = ICON_RATING,
				ImageColor3 = style.Theme.IconEmphasis.Color,
				ImageTransparency = style.Theme.IconEmphasis.Transparency,
				BackgroundTransparency = 1,
			}),
			TextSection = Roact.createElement("Frame", {
				LayoutOrder = 2,
				Size = UDim2.new(1, TEXT_SECTION_OFFSET, 0, 0),
				BackgroundTransparency = 1,
				AutomaticSize = Enum.AutomaticSize.Y,
			}, {
				ListLayout = Roact.createElement("UIListLayout", {
					SortOrder = Enum.SortOrder.LayoutOrder,
					FillDirection = Enum.FillDirection.Vertical,
				}),
				RateText = Roact.createElement(GenericTextLabel, {
					LayoutOrder = 1,
					AutomaticSize = Enum.AutomaticSize.Y,
					Text = rateText,
					colorStyle = style.Theme.TextEmphasis,
					fontStyle = style.Font.Title,
					BackgroundTransparency = 1,
				}),
				RateLabel = Roact.createElement(GenericTextLabel, {
					LayoutOrder = 2,
					AutomaticSize = Enum.AutomaticSize.Y,
					Text = rateLabel,
					colorStyle = style.Theme.TextEmphasis,
					fontStyle = style.Font.CaptionHeader,
					BackgroundTransparency = 1,
				}),
			}),
			VoteDown = Roact.createElement(IconButton, {
				layoutOrder = 3,
				size = UDim2.fromOffset(BUTTON_SIZE, BUTTON_SIZE),
				icon = isVoteDownChecked and ICON_VOTE_DOWN_ON or ICON_VOTE_DOWN_OFF,
				iconColor3 = style.Theme.IconEmphasis.Color,
				onActivated = self.onVoteDownActivated,
				showBackground = true,
			}),
			VoteUp = Roact.createElement(IconButton, {
				layoutOrder = 4,
				size = UDim2.fromOffset(BUTTON_SIZE, BUTTON_SIZE),
				icon = isVoteUpChecked and ICON_VOTE_UP_ON or ICON_VOTE_UP_OFF,
				iconColor3 = style.Theme.IconEmphasis.Color,
				onActivated = self.onVoteUpActivated,
				showBackground = true,
			}),
		})
	end)
end

return RateCount
