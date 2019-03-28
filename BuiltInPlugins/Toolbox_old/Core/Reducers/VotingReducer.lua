local Plugin = script.Parent.Parent.Parent

local Libs = Plugin.Libs
local Cryo = require(Libs.Cryo)
local Rodux = require(Libs.Rodux)

local GetAssets = require(Plugin.Core.Actions.GetAssets)
local PostInsertAsset = require(Plugin.Core.Actions.PostInsertAsset)
local PostUnvote = require(Plugin.Core.Actions.PostUnvote)
local PostVote = require(Plugin.Core.Actions.PostVote)

local function handleVoting(state, assetId, voteDirection)
	return Cryo.Dictionary.join(state, {
		[assetId] = Cryo.Dictionary.join(state[assetId], {
			HasVoted = true,
			UserVote = voteDirection,
		}),
	})
end

local function handleUnvoting(state, assetId)
	return Cryo.Dictionary.join(state, {
		[assetId] = Cryo.Dictionary.join(state[assetId], {
			HasVoted = false,
			UserVote = nil,
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