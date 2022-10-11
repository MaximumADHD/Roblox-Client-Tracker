--[[

	Optional props:
		boolean showBackgroundBox: whether or not to show the light background box around the vote buttons. Default false.

	callback onVoteRequested(NetworkInterface networkInterface, number assetId, bool vote)
	callback onUnvoteRequested(NetworkInterface networkInterface, number assetId)
]]

local Plugin = script.Parent.Parent.Parent.Parent.Parent

local Packages = Plugin.Packages
local Roact = require(Packages.Roact)
local RoactRodux = require(Packages.RoactRodux)

local Framework = require(Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Resources = Framework.Resources
local COMPONENT_NAME = "VoteButons"
local LOCALIZATION_PROJECT_NAME = Resources.LOCALIZATION_PROJECT_NAME

local Constants = require(Plugin.Core.Util.Constants)
local ContextGetter = require(Plugin.Core.Util.ContextGetter)

local getNetwork = ContextGetter.getNetwork

local VoteButton = require(Plugin.Core.Components.Asset.Voting.VoteButton)

local PostUnvoteRequest = require(Plugin.Core.Networking.Requests.PostUnvoteRequest)
local PostVoteRequest = require(Plugin.Core.Networking.Requests.PostVoteRequest)

local VoteButtons = Roact.PureComponent:extend("VoteButtons")

function VoteButtons:init(props)
	local networkInterface = getNetwork(self)
	local assetId = self.props.assetId

	local onVoteRequested = self.props.onVoteRequested
	local onUnvoteRequested = self.props.onUnvoteRequested

	self.onVoteUpClicked = function(rbx, x, y)
		local voting = self.props.voting
		if voting.HasVoted and voting.UserVote then
			onUnvoteRequested(networkInterface, assetId)
		else
			onVoteRequested(networkInterface, assetId, true)
		end
	end

	self.onVoteDownClicked = function(rbx, x, y)
		local voting = self.props.voting
		if voting.HasVoted and not voting.UserVote then
			onUnvoteRequested(networkInterface, assetId)
		else
			onVoteRequested(networkInterface, assetId, false)
		end
	end
end

function VoteButtons:render()
	local props = self.props
	local theme = props.Stylizer
	local votingTheme = theme.asset.voting
	local localization = props.Localization
	local showBackgroundBox = props.showBackgroundBox
	return Roact.createElement("Frame", {
		BackgroundTransparency = if showBackgroundBox then 0.95 else 1,
		BackgroundColor3 = if showBackgroundBox then votingTheme.votingButtonsBackgroundBoxColor else nil,
		LayoutOrder = nil,
		Size = UDim2.new(1, 0, 0, Constants.ASSET_VOTING_BUTTONS_HEIGHT),
	}, {
		UIListLayout = Roact.createElement("UIListLayout", {
			Padding = UDim.new(0, Constants.ASSET_VOTE_BUTTONS_HORIZONTAL_PADDING),
			SortOrder = Enum.SortOrder.LayoutOrder,
			FillDirection = Enum.FillDirection.Horizontal,
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			VerticalAlignment = Enum.VerticalAlignment.Center,
		}),

		UICorner = if showBackgroundBox
			then Roact.createElement("UICorner", {
				CornerRadius = UDim.new(0, Constants.ASSET_VOTING_BUTTONS_BACKGROUND_BOX_CORNER_RADIUS),
			})
			else nil,

		RateText = Roact.createElement("TextLabel", {
			AutomaticSize = Enum.AutomaticSize.XY,
			LayoutOrder = 0,
			Text = localization:getProjectText(LOCALIZATION_PROJECT_NAME, COMPONENT_NAME, "Rate"),
			BackgroundTransparency = 1,
			TextXAlignment = Enum.TextXAlignment.Left,
			Font = Constants.FONT,
			TextSize = Constants.FONT_SIZE_SMALL,
			TextColor3 = theme.asset.voting.rateTextColor,
		}, {
			UIPadding = Roact.createElement("UIPadding", {
				PaddingRight = UDim.new(0, Constants.ASSET_VOTE_BUTTONS_TEXT_PADDING),
			}),
		}),

		VoteUpButton = Roact.createElement(VoteButton, {
			isVoteUp = true,

			hasVoted = props.voting.HasVoted,
			userVote = props.voting.UserVote,

			onClicked = self.onVoteUpClicked,
		}),

		VoteDownButton = Roact.createElement(VoteButton, {
			isVoteUp = false,

			hasVoted = props.voting.HasVoted,
			userVote = props.voting.UserVote,

			onClicked = self.onVoteDownClicked,
		}),
	})
end

VoteButtons = withContext({
	Stylizer = ContextServices.Stylizer,
	Localization = ContextServices.Localization,
})(VoteButtons)

local function mapDispatchToProps(dispatch)
	return {
		onVoteRequested = function(networkInterface, assetId, bool)
			dispatch(PostVoteRequest(networkInterface, assetId, bool))
		end,

		onUnvoteRequested = function(networkInterface, assetId)
			dispatch(PostUnvoteRequest(networkInterface, assetId))
		end,
	}
end

return RoactRodux.connect(nil, mapDispatchToProps)(VoteButtons)
