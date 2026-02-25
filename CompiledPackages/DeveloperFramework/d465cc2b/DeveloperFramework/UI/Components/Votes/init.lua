--[[
	Shows an icon representing votes, and a summary of the thing's votes.

	Required Props:
		Voting Voting: Table of Voting info.

	Optional Props:
		Stylizer Stylizer: A Stylizer ContextItem, which is provided via withContext.
		ContextItem Localization: A Localization ContextItem, which is provided via withContext.
		Style Style: The styling for the component.
		number LayoutOrder: LayoutOrder of the component.
		UDim2 Position: The position of this component.
		UDim2 Size: The size of this component.
		Enum.AutomaticSize AutomaticSize: The automatic size of this component.
		Enum.VerticalAlignment VerticalAlignment: The vertical alignment of this component.
		number TextSize: size of text.
		number Padding: the horizontal padding in between the thumb and the number.
		UDim2 ThumbSize: the size (value is used as length and width) of the thumb.
		boolean IncludeVoteCount: if provided, includes the vote count. Default false.
		number VoteCountHeight: The pixel height to use for the vote count.
		Enum.Font Font: The font used to render the VoteCount.
]]
local Framework = script:FindFirstAncestor("UI").Parent

local Roact = require(Framework.Parent.Roact)
local ContextServices = require(Framework.UI.ContextServices)
local withContext = ContextServices.withContext

local Util = require(Framework.Util)
local formatVoteNumber = Util.formatVoteNumber
local Typecheck = require(Framework.Util.Typecheck)
local prioritize = Util.prioritize

local Image = require(Framework.UI.Components.Image)
local TextLabel = require(Framework.UI.Components.TextLabel)

local Votes = Roact.PureComponent:extend("Votes")
Typecheck.wrap(Votes, script)

function Votes:render()
	local props = self.props
	local Voting = props.Voting

	-- Voting Constants
	local RATINGS_CONFIDENCE_THRESHOLD = 20
	local GOOD_RATING_THRESHOLD = 70
	local OKAY_RATING_THRESHOLD = 40
	local votePercentage = 0
	local total = if Voting.VoteCount ~= nil then Voting.VoteCount else 0
	votePercentage = Voting.UpVotePercent or 0

	local style = self.props.Stylizer

	local size = prioritize(props.Size, style.Size)
	local font = prioritize(props.Font, style.Font)
	local voteCountSize
	if props.VoteCountHeight then
		voteCountSize = UDim2.new(0, 0, 0, props.VoteCountHeight)
	else
		voteCountSize = UDim2.new(0, 0, 1, 0)
	end

	local thumbIconColor
	local votePercentageColor
	if total ~= nil then
		if total < RATINGS_CONFIDENCE_THRESHOLD then
			thumbIconColor = style.ThumbUp.Colors.Gray
		elseif votePercentage >= GOOD_RATING_THRESHOLD then
			thumbIconColor = style.ThumbUp.Colors.Green
			votePercentageColor = style.GoodRatingColor
		elseif votePercentage < GOOD_RATING_THRESHOLD and votePercentage >= OKAY_RATING_THRESHOLD then
			thumbIconColor = style.ThumbUp.Colors.Yellow
			votePercentageColor = style.OkayRatingColor
		else
			thumbIconColor = style.ThumbUp.Colors.Red
			votePercentageColor = style.PoorRatingColor
		end
	end

	return Roact.createElement("Frame", {
		LayoutOrder = props.LayoutOrder,
		Position = props.Position,
		AutomaticSize = Enum.AutomaticSize.XY,
		Size = size,
		BackgroundTransparency = 1,
	}, {
		Layout = Roact.createElement("UIListLayout", {
			Padding = if props.Padding ~= nil then UDim.new(0, props.Padding) else UDim.new(0, 5),
			FillDirection = Enum.FillDirection.Horizontal,
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			VerticalAlignment = if props.VerticalAlignment ~= nil
				then props.VerticalAlignment
				else Enum.VerticalAlignment.Center,
			SortOrder = Enum.SortOrder.LayoutOrder,
		}),
		Icon = Roact.createElement(Image, {
			ImageColor3 = thumbIconColor,
			Image = style.ThumbUp.Icon,
			LayoutOrder = 10,
			Style = style.Icon,
		}),
		Text = Roact.createElement(TextLabel, {
			LayoutOrder = 20,
			AutomaticSize = Enum.AutomaticSize.XY,
			Text = string.format("%d%%", votePercentage),
			TextColor = votePercentageColor,
			Style = style.Text,
			TextSize = props.TextSize,
		}),
		VoteCount = if props.IncludeVoteCount
			then Roact.createElement(TextLabel, {
				LayoutOrder = 30,
				AutomaticSize = Enum.AutomaticSize.X,
				Size = voteCountSize,
				Text = formatVoteNumber.getFormattedVoteNumberAndText(total, props.Localization, true, false),
				TextTruncate = Enum.TextTruncate.AtEnd,
				Style = style.VoteCount,
				Font = font,
				TextSize = props.TextSize,
				TextXAlignment = Enum.TextXAlignment.Left,
			})
			else nil,
	})
end

Votes = withContext({
	Stylizer = ContextServices.Stylizer,
	Localization = ContextServices.Localization,
})(Votes)

return Votes
