local Plugin = script.Parent.Parent.Parent

local Libs = Plugin.Libs
local Cryo = require(Libs.Cryo)
local Rodux = require(Libs.Rodux)

local GetAssets = require(Plugin.Core.Actions.GetAssets)
local PostInsertAsset = require(Plugin.Core.Actions.PostInsertAsset)
local PostUnvote = require(Plugin.Core.Actions.PostUnvote)
local PostVote = require(Plugin.Core.Actions.PostVote)

local function handleVoting(state, assetId, voteDirection)
	local currentVoting = state[assetId]
	local newVoteUp = currentVoting.UpVotes
	local newVoteDown = currentVoting.DownVotes

	if voteDirection then
		if currentVoting.HasVoted and not currentVoting.UserVote then
			newVoteDown = currentVoting.DownVotes - 1
		end

		newVoteUp = currentVoting.UpVotes + 1
	else
		if currentVoting.HasVoted and currentVoting.UserVote then
			newVoteUp = currentVoting.UpVotes - 1
		end

		newVoteDown = currentVoting.DownVotes + 1
	end

	return Cryo.Dictionary.join(state, {
		[assetId] = Cryo.Dictionary.join(state[assetId], {
			HasVoted = true,
			UserVote = voteDirection,
			UpVotes = newVoteUp,
			DownVotes = newVoteDown
		}),
	})
end

local function handleUnvoting(state, assetId)
	local currentVoting = state[assetId]
	local newVoteUp = currentVoting.UpVotes
	local newVoteDown = currentVoting.DownVotes
	if currentVoting.HasVoted then
		if currentVoting.UserVote == true then
			newVoteUp = newVoteUp - 1
		else
			newVoteDown = newVoteDown - 1
		end
	end

	return Cryo.Dictionary.join(state, {
		[assetId] = Cryo.Dictionary.join(state[assetId], {
			HasVoted = false,
			UserVote = nil,
			UpVotes = newVoteUp,
			DownVotes = newVoteDown,
		}),
	})
end

local function setShowVoteButtons(state, assetId)
	return Cryo.Dictionary.join(state, {
		[assetId] = Cryo.Dictionary.join(state[assetId], {
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

return Rodux.createReducer({
}, {
	[GetAssets.name] = function(state, action)
		local newVoting = {}
		for _, asset in ipairs(action.assets) do
			newVoting[asset.Asset.Id] = asset.Voting
		end
		return Cryo.Dictionary.join(state, newVoting)
	end,

	[PostInsertAsset.name] = function(state, action)
		return setShowVoteButtons(state, action.assetId)
	end,

	[PostVote.name] = function(state, action)
		return handleVoting(state, action.assetId, action.userVote)
	end,

	[PostUnvote.name] = function(state, action)
		return handleUnvoting(state, action.assetId)
	end,
})