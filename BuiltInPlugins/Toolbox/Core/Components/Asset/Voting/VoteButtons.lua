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

local FFlagAssetVoteSimplification = game:GetFastFlag("AssetVoteSimplification")

local Framework, ContextServices, withContext, Resources, COMPONENT_NAME, LOCALIZATION_PROJECT_NAME
if FFlagAssetVoteSimplification then
	Framework = require(Packages.Framework)
	ContextServices = Framework.ContextServices
	withContext = ContextServices.withContext
	Resources = Framework.Resources
	COMPONENT_NAME = "VoteButons"
	LOCALIZATION_PROJECT_NAME = Resources.LOCALIZATION_PROJECT_NAME
end

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
	local theme = if FFlagAssetVoteSimplification then props.Stylizer else nil
	local votingTheme = if FFlagAssetVoteSimplification then theme.asset.voting else nil
	local localization = if FFlagAssetVoteSimplification then props.Localization else nil
	local showBackgroundBox = if FFlagAssetVoteSimplification then props.showBackgroundBox else nil
	return Roact.createElement("Frame", {
		BackgroundTransparency = if FFlagAssetVoteSimplification and showBackgroundBox then .95 else 1,
		BackgroundColor3 = if FFlagAssetVoteSimplification and showBackgroundBox then votingTheme.votingButtonsBackgroundBoxColor else nil,
		LayoutOrder = nil,
		Size = if FFlagAssetVoteSimplification and showBackgroundBox
			then UDim2.new(1, 0, 0, Constants.ASSET_VOTING_BUTTONS_HEIGHT)
			elseif FFlagAssetVoteSimplification and not showBackgroundBox then UDim2.new(1, 0, 0, Constants.ASSET_VOTING_BUTTONS_HEIGHT) -- todo use a difference height? (and then change height in asset.lua when it's active as well...?)
			else UDim2.new(1, 0, 1, 0),
	}, {
		UIListLayout = Roact.createElement("UIListLayout", {
			Padding = if FFlagAssetVoteSimplification then UDim.new(0, Constants.ASSET_VOTE_BUTTONS_HORIZONTAL_PADDING) else UDim.new(0, 2),
			SortOrder = Enum.SortOrder.LayoutOrder,
			FillDirection = Enum.FillDirection.Horizontal,
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			VerticalAlignment = Enum.VerticalAlignment.Center,
		}),

		UICorner = if FFlagAssetVoteSimplification and showBackgroundBox then Roact.createElement("UICorner", {
			CornerRadius = UDim.new(0, Constants.ASSET_VOTING_BUTTONS_BACKGROUND_BOX_CORNER_RADIUS),
		}) else nil,

		RateText = if FFlagAssetVoteSimplification
			then
				Roact.createElement("TextLabel", {
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
				})
			else nil,

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

if FFlagAssetVoteSimplification then
	VoteButtons = withContext({
		Stylizer = ContextServices.Stylizer,
		Localization = ContextServices.Localization,
	})(VoteButtons)
end

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
