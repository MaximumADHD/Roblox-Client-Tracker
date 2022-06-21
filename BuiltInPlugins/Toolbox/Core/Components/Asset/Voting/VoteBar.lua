local Plugin = script.Parent.Parent.Parent.Parent.Parent

local Packages = Plugin.Packages
local Roact = require(Packages.Roact)

local Framework = require(Packages.Framework)
local FFlagAssetVoteSimplification = game:GetFastFlag("AssetVoteSimplification")
local formatVoteNumber = if FFlagAssetVoteSimplification then Framework.Util.formatVoteNumber else nil
local Votes = if FFlagAssetVoteSimplification then Framework.StudioUI.Votes else nil
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
	local totalVotes = if FFlagAssetVoteSimplification then props.voting.VoteCount else upVotes + downVotes
	local voteRatio
	if FFlagAssetVoteSimplification then
		voteRatio = props.voting.UpVotePercent
	else
		voteRatio = (totalVotes ~= 0) and (upVotes / totalVotes) or 1
	end
	return Roact.createElement("Frame", {
		BackgroundTransparency = 1,
		LayoutOrder = nil,
		Size = UDim2.new(1, 0, 1, 0) or UDim2.new(1, 0, 0, Constants.ASSET_VOTING_HEIGHT),
	}, {
		UIListLayout = Roact.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
			HorizontalAlignment = if FFlagAssetVoteSimplification
				then Enum.HorizontalAlignment.Left
				else Enum.HorizontalAlignment.Center,
			FillDirection = if FFlagAssetVoteSimplification then Enum.FillDirection.Horizontal else nil,
			Padding = if FFlagAssetVoteSimplification then UDim.new(0, Constants.ASSET_INNER_PADDING) else nil,
		}),
		VoteBar = if FFlagAssetVoteSimplification
			then nil
			else Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				LayoutOrder = 0,
				Size = UDim2.new(1, 0, 0, Constants.ASSET_VOTE_BAR_OUTER_HEIGHT),
			}, {
				Background = Roact.createElement("Frame", {
					AnchorPoint = Vector2.new(0, 0.5),
					BackgroundColor3 = votingTheme.downVotes,
					BorderSizePixel = 0,
					Position = UDim2.new(0, 0, 0.5, 0),
					Size = UDim2.new(1, 0, 0, Constants.ASSET_VOTE_BAR_HEIGHT),
				}, {
					UpVotes = Roact.createElement("Frame", {
						BackgroundColor3 = votingTheme.upVotes,
						BorderSizePixel = 0,
						Size = UDim2.new(voteRatio, 0, 1, 0),
					}),
				}),
			}),
		Votes = if not FFlagAssetVoteSimplification
			then nil
			else Roact.createElement(Votes, {
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
		VoteCount = if FFlagAssetVoteSimplification
			then nil
			else Roact.createElement("TextLabel", {
				BackgroundTransparency = 1,
				LayoutOrder = 1,
				Size = UDim2.new(1, 0, 0, Constants.ASSET_VOTE_COUNT_HEIGHT),
				Text = DEPRECATED_localization:getLocalizedVoteText(totalVotes),
				TextColor3 = votingTheme.textColor,
				TextTruncate = Enum.TextTruncate.AtEnd,

				Font = Constants.FONT,
				TextSize = Constants.ASSET_VOTE_COUNT_FONT_SIZE,

				TextXAlignment = Enum.TextXAlignment.Left,
			}),
	})
end

VoteBar = withContext({
	Stylizer = ContextServices.Stylizer,
})(VoteBar)

return VoteBar
