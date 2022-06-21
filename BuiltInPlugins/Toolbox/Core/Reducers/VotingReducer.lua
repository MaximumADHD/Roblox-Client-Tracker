local FFlagAssetVoteSimplification = game:GetFastFlag("AssetVoteSimplification")

local Plugin = script.Parent.Parent.Parent

local Packages = Plugin.Packages
local Cryo = require(Packages.Cryo)
local Rodux = require(Packages.Rodux)

local GetAssets = require(Plugin.Core.Actions.GetAssets)
local PostInsertAsset = require(Plugin.Core.Actions.PostInsertAsset)
local PostUnvote = require(Plugin.Core.Actions.PostUnvote)
local PostVote = require(Plugin.Core.Actions.PostVote)

local function handleVoting(state, assetId, voteDirection)
	local currentVoting = state[assetId]
	local newVoteUp = currentVoting.UpVotes
	local newVoteDown = currentVoting.DownVotes
	local newVoteCount = if FFlagAssetVoteSimplification then currentVoting.VoteCount else nil

	if voteDirection then
		if currentVoting.HasVoted and not currentVoting.UserVote then
			newVoteDown = currentVoting.DownVotes - 1
			newVoteCount = if FFlagAssetVoteSimplification then newVoteCount - 1 else nil
		end
		newVoteUp = currentVoting.UpVotes + 1
		newVoteCount = if FFlagAssetVoteSimplification then newVoteCount + 1 else nil
	else
		if currentVoting.HasVoted and currentVoting.UserVote then
			newVoteUp = currentVoting.UpVotes - 1
			newVoteCount = if FFlagAssetVoteSimplification then newVoteCount - 1 else nil
		end

		newVoteDown = currentVoting.DownVotes + 1
		newVoteCount = if FFlagAssetVoteSimplification then newVoteCount + 1 else nil
	end

	return Cryo.Dictionary.join(state, {
		[assetId] = Cryo.Dictionary.join(state[assetId], {
			HasVoted = true,
			UserVote = voteDirection,
			UpVotes = newVoteUp,
			DownVotes = newVoteDown,
			VoteCount = FFlagAssetVoteSimplification and newVoteCount,
		}),
	})
end

local function handleUnvoting(state, assetId)
	local currentVoting = state[assetId]
	local newVoteUp = currentVoting.UpVotes
	local newVoteDown = currentVoting.DownVotes
	local newVoteCount = if FFlagAssetVoteSimplification then currentVoting.VoteCount else nil
	if currentVoting.HasVoted then
		if currentVoting.UserVote == true then
			newVoteUp = newVoteUp - 1
		else
			newVoteDown = newVoteDown - 1
		end
		newVoteCount = if FFlagAssetVoteSimplification then newVoteCount - 1 else nil
	end

	return Cryo.Dictionary.join(state, {
		[assetId] = Cryo.Dictionary.join(state[assetId], {
			HasVoted = false,
			UserVote = Cryo.None,
			UpVotes = newVoteUp,
			DownVotes = newVoteDown,
			VoteCount = FFlagAssetVoteSimplification and newVoteCount,
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

return Rodux.createReducer({}, {
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
