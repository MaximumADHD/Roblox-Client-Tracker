--[[
	Shows either the current voting status of an asset (the ratio of up
	votes to down votes and the total votes), or butons for a user to vote
	on an asset.

	Props:
		number assetId
		Voting voting
			number UpVotes
			number DownVotes
			boolean CanVote
			boolean UserVote
			boolean HasVoted
			boolean ShowVotes
			boolean showVoteButtons = false
		number LayoutOrder = 0
]]

local Plugin = script.Parent.Parent.Parent.Parent.Parent

local Packages = Plugin.Packages
local Framework = require(Packages.Framework)
local Roact = require(Packages.Roact)

local Constants = require(Plugin.Core.Util.Constants)

local VoteBar = require(Plugin.Core.Components.Asset.Voting.VoteBar)
local VoteButtons = require(Plugin.Core.Components.Asset.Voting.VoteButtons)
local LoadingIndicator = Framework.UI.LoadingIndicator

local function Voting(props)
	local layoutOrder = props.LayoutOrder or 0
	local showVotes = props.voting.ShowVotes
	local showVoteButtons = props.voting.showVoteButtons or false
	local showVoteLoading = props.voting.VoteLoading

	local children = {}
	if showVotes then
		if showVoteLoading then
			children.VoteLoading = Roact.createElement(LoadingIndicator, { Size = UDim2.new(0.333, 0, 0.333, 0) })
			children.UIListLayout = Roact.createElement("UIListLayout", {
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
				VerticalAlignment = Enum.VerticalAlignment.Center,
			})
		elseif showVoteButtons then
			children.VoteButtons = Roact.createElement(VoteButtons, props)
		else
			children.VoteBar = Roact.createElement(VoteBar, props)
		end
	end

	local height = if showVoteButtons then Constants.ASSET_VOTING_BUTTONS_HEIGHT else Constants.ASSET_VOTE_COUNT_HEIGHT

	return Roact.createElement("Frame", {
		BackgroundTransparency = 1,
		LayoutOrder = layoutOrder,
		Size = UDim2.new(1, 0, 0, height),
	}, children)
end

return Voting
