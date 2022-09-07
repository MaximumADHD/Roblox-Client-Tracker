local Plugin = script.Parent.Parent.Parent.Parent.Parent

local Packages = Plugin.Packages
local Roact = require(Packages.Roact)

local Framework = require(Packages.Framework)
local Votes = Framework.StudioUI.Votes
local Constants = require(Plugin.Core.Util.Constants)
local ContextHelper = require(Plugin.Core.Util.ContextHelper)

local withLocalization = ContextHelper.withLocalization
local ContextServices = require(Packages.Framework).ContextServices
local withContext = ContextServices.withContext
local VoteBar = Roact.PureComponent:extend("VoteBar")

function VoteBar:render()
	return withLocalization(function(DEPRECATED_localization)
		return self:renderContent(nil, DEPRECATED_localization)
	end)
end

function VoteBar:renderContent(theme, DEPRECATED_localization)
	local props = self.props
	theme = props.Stylizer
	local votingTheme = theme.asset.voting

	local upVotes = props.voting.UpVotes
	local downVotes = props.voting.DownVotes
	local totalVotes = props.voting.VoteCount
	local voteRatio = props.voting.UpVotePercent
	return Roact.createElement("Frame", {
		BackgroundTransparency = 1,
		LayoutOrder = nil,
		Size = UDim2.new(1, 0, 1, 0) or UDim2.new(1, 0, 0, Constants.ASSET_VOTING_HEIGHT),
	}, {
		UIListLayout = Roact.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			FillDirection = Enum.FillDirection.Horizontal,
			Padding = UDim.new(0, Constants.ASSET_INNER_PADDING),
		}),
		Votes = Roact.createElement(Votes, {
			Voting = {
				UpVotes = upVotes,
				DownVotes = downVotes,
				VoteCount = totalVotes,
				UpVotePercent = voteRatio,
			},
			TextSize = Constants.ASSET_VOTE_COUNT_FONT_SIZE,
			TextAutomaticSize = Enum.AutomaticSize.X,
			Font = Constants.FONT,
			Size = UDim2.new(0, 0, 0, 0),
			VerticalAlignment = Enum.VerticalAlignment.Center,
			Padding = Constants.ASSET_VOTE_COUNT_HORIZONTAL_PADDING,

			IncludeVoteCount = true,
			VoteCountHeight = Constants.ASSET_VOTE_COUNT_HEIGHT,
			VoteCountColor = votingTheme.voteCountColor,
			LowConfidencePercentageColor = votingTheme.lowConfidencePercentageColor,
		}),
	})
end

VoteBar = withContext({
	Stylizer = ContextServices.Stylizer,
})(VoteBar)

return VoteBar
