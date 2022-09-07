local FFlagToolboxUseGetVote = game:GetFastFlag("ToolboxUseGetVote")
local FFlagToolboxFixAssetsNoVoteData2 = game:GetFastFlag("ToolboxFixAssetsNoVoteData2")

local Plugin = script.Parent.Parent.Parent

local Packages = Plugin.Packages
local Cryo = require(Packages.Cryo)
local Rodux = require(Packages.Rodux)

local GetAssets = require(Plugin.Core.Actions.GetAssets)
local GetVote = require(Plugin.Core.Actions.GetVote)
local GetAssetsVotingData = require(Plugin.Core.Actions.GetAssetsVotingData)
local PostInsertAsset = require(Plugin.Core.Actions.PostInsertAsset)
local PostUnvote = require(Plugin.Core.Actions.PostUnvote)
local PostVote = require(Plugin.Core.Actions.PostVote)
local SetVoteLoading = require(Plugin.Core.Actions.SetVoteLoading)

local function handleGetVote(state, assetId, userVote)
	local hasVoted = userVote ~= nil
	return Cryo.Dictionary.join(state, {
		[assetId] = Cryo.Dictionary.join(state[assetId], {
			HasVoted = hasVoted,
			UserVote = userVote,
			showVoteButtons = hasVoted,
		}),
	})
end

local function handleVoting(state, assetId, voteDirection)
	local currentVoting = state[assetId]
	local newVoteUp = currentVoting.UpVotes
	local newVoteDown = currentVoting.DownVotes
	local newVoteCount = currentVoting.VoteCount

	if voteDirection then
		if currentVoting.HasVoted and not currentVoting.UserVote then
			newVoteDown = currentVoting.DownVotes - 1
			newVoteCount = newVoteCount - 1
		end
		newVoteUp = currentVoting.UpVotes + 1
		newVoteCount = newVoteCount + 1
	else
		if currentVoting.HasVoted and currentVoting.UserVote then
			newVoteUp = currentVoting.UpVotes - 1
			newVoteCount = newVoteCount - 1
		end

		newVoteDown = currentVoting.DownVotes + 1
		newVoteCount = newVoteCount + 1
	end

	local hasVoted = true
	-- We don't change VoteCount here and below for two reasons:
	-- 1. In the past, user votes were counted immediately. But now there's a several day delay between when they're counted. So we shouldn't update the votecount immediately
	-- 2. The backend sends rounded numbers (e.g. 13 --> 10+, 121 --> 100+), so if we updated the votecount it would look bad (e.g. 11+,.
	return Cryo.Dictionary.join(state, {
		[assetId] = Cryo.Dictionary.join(state[assetId], {
			HasVoted = hasVoted,
			UserVote = voteDirection,
			UpVotes = newVoteUp,
			DownVotes = newVoteDown,
			VoteCount = currentVoting.VoteCount,
			-- If they have a vote, show the vote buttons so they'll see the red or green thumb near the asset icon
			showVoteButtons = hasVoted,
		}),
	})
end

local function handleUnvoting(state, assetId)
	local currentVoting = state[assetId]
	local newVoteUp = currentVoting.UpVotes
	local newVoteDown = currentVoting.DownVotes
	local newVoteCount = currentVoting.VoteCount
	if currentVoting.HasVoted then
		if currentVoting.UserVote == true then
			newVoteUp = newVoteUp - 1
		else
			newVoteDown = newVoteDown - 1
		end
		newVoteCount = newVoteCount - 1
	end

	return Cryo.Dictionary.join(state, {
		[assetId] = Cryo.Dictionary.join(state[assetId], {
			HasVoted = false,
			UserVote = Cryo.None,
			UpVotes = newVoteUp,
			DownVotes = newVoteDown,
			VoteCount = currentVoting.VoteCount,
		}),
	})
end

local function setShowVoteButtons(state, assetId)
	local prevAssetState = state[assetId] or {}
	return Cryo.Dictionary.join(state, {
		[assetId] = Cryo.Dictionary.join(prevAssetState, {
			-- Needed for the old Toolbox to show voteButtons after an asset
			-- is being inserted.
			showVoteButtons = true,

			-- It's wrong to override this in Toolbox. If the server told client the asset
			-- can't be voted, it would reject any vote requests!
			-- We should grey out the vote buttons instead!
			--CanVote = true,
		}),
	})
end

local function setVoteLoading(state, assetId, voteLoading, voteFetchAttempted)
	local prevAssetState = state[assetId] or {}
	return Cryo.Dictionary.join(state, {
		[assetId] = Cryo.Dictionary.join(prevAssetState, {
			VoteLoading = voteLoading,
			VoteFetchAttempted = voteFetchAttempted,
		}),
	})
end

local function updateAssetVotes(state, action)
	local newVoting = {}
	for _, asset in ipairs(action.assets) do
		local currentVotingState = state[asset.Asset.Id]
		newVoting[asset.Asset.Id] = asset.Voting
	end
	return Cryo.Dictionary.join(state, newVoting)
end

return Rodux.createReducer({}, {
	[GetAssets.name] = function(state, action)
		if FFlagToolboxFixAssetsNoVoteData2 then
			return updateAssetVotes(state, action)
		else
			local newVoting = {}
			for _, asset in ipairs(action.assets) do
				newVoting[asset.Asset.Id] = asset.Voting
			end
			return Cryo.Dictionary.join(state, newVoting)
		end
	end,

	[GetAssetsVotingData.name] = if FFlagToolboxFixAssetsNoVoteData2
		then function(state, action)
			return updateAssetVotes(state, action)
		end
		else nil,

	[PostInsertAsset.name] = function(state, action)
		return setShowVoteButtons(state, action.assetId)
	end,

	[GetVote.name] = FFlagToolboxUseGetVote and function(state, action)
		return handleGetVote(state, action.assetId, action.userVote)
	end,

	[PostVote.name] = function(state, action)
		return handleVoting(state, action.assetId, action.userVote)
	end,

	[PostUnvote.name] = function(state, action)
		return handleUnvoting(state, action.assetId)
	end,

	[SetVoteLoading.name] = FFlagToolboxUseGetVote and function(state, action)
		return setVoteLoading(state, action.AssetId, action.VoteLoading, action.VoteFetchAttempted)
	end,
})
