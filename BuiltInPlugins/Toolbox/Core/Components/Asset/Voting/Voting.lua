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

local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)

local VoteBar = require(Plugin.Core.Components.Asset.Voting.VoteBar)
local VoteButtons = require(Plugin.Core.Components.Asset.Voting.VoteButtons)

local function Voting(props)
	local showVotes = props.voting.ShowVotes
	local showVoteButtons = props.voting.showVoteButtons or false

	if showVotes then
		if showVoteButtons then
			return Roact.createElement(VoteButtons, props)
		else
			return Roact.createElement(VoteBar, props)
		end
	else
		return nil
	end
end

return Voting
