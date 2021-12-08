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

local FFlagToolboxDeduplicatePackages = game:GetFastFlag("ToolboxDeduplicatePackages")
local Libs
if FFlagToolboxDeduplicatePackages then
	Libs = Plugin.Packages
else
	Libs = Plugin.Libs
end
local Roact = require(Libs.Roact)

local Constants = require(Plugin.Core.Util.Constants)

local VoteBar = require(Plugin.Core.Components.Asset.Voting.VoteBar)
local VoteButtons = require(Plugin.Core.Components.Asset.Voting.VoteButtons)

local function Voting(props)
	local layoutOrder = props.LayoutOrder or 0
	local showVotes = props.voting.ShowVotes
	local showVoteButtons = props.voting.showVoteButtons or false

	local children = {}
	if showVotes then
		if showVoteButtons then
			children.VoteButtons = Roact.createElement(VoteButtons, props)
		else
			children.VoteBar = Roact.createElement(VoteBar, props)
		end
	end

	return Roact.createElement("Frame", {
		BackgroundTransparency = 1,
		LayoutOrder = layoutOrder,
		Size = UDim2.new(1, 0, 0, Constants.ASSET_VOTING_HEIGHT),
	}, children)
end

return Voting
