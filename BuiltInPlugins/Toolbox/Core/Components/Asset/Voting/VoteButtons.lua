--[[

	callback onVoteRequested(NetworkInterface networkInterface, number assetId, bool vote)
	callback onUnvoteRequested(NetworkInterface networkInterface, number assetId)
]]

local Plugin = script.Parent.Parent.Parent.Parent.Parent

local Libs = Plugin.Libs
local Roact = require(Libs.Roact)
local RoactRodux = require(Libs.RoactRodux)

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
		if self.props.voting.UserVote then
			onUnvoteRequested(networkInterface, assetId)
		else
			onVoteRequested(networkInterface, assetId, true)
		end
	end

	self.onVoteDownClicked = function(rbx, x, y)
		if self.props.voting.UserVote then
			onVoteRequested(networkInterface, assetId, false)
		else
			onUnvoteRequested(networkInterface, assetId)
		end
	end
end

function VoteButtons:render()
	local props = self.props

	return Roact.createElement("Frame", {
		BackgroundTransparency = 1,
		LayoutOrder = nil,
		Size = UDim2.new(1, 0, 1, 0),
	}, {
		UIListLayout = Roact.createElement("UIListLayout", {
			Padding = UDim.new(0, 2),
			SortOrder = Enum.SortOrder.LayoutOrder,
			FillDirection = Enum.FillDirection.Horizontal,
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			VerticalAlignment = Enum.VerticalAlignment.Center,
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

local function mapDispatchToProps(dispatch)
	return {
		onVoteRequested = function(networkInterface, assetId, bool)
			dispatch(PostVoteRequest(networkInterface, assetId, bool))
		end,

		onUnvoteRequested = function(networkInterface, assetId)
			dispatch(PostUnvoteRequest(networkInterface, assetId))
		end
	}
end

return RoactRodux.UNSTABLE_connect2(nil, mapDispatchToProps)(VoteButtons)
