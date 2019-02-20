local Plugin = script.Parent.Parent.Parent

local Libs = Plugin.Libs
local Cryo = require(Libs.Cryo)
local Rodux = require(Libs.Rodux)

local DebugFlags = require(Plugin.Core.Util.DebugFlags)
local Immutable = require(Plugin.Core.Util.Immutable)

local GetAssets = require(Plugin.Core.Actions.GetAssets)
local PostInsertAsset = require(Plugin.Core.Actions.PostInsertAsset)
local PostUnvote = require(Plugin.Core.Actions.PostUnvote)
local PostVote = require(Plugin.Core.Actions.PostVote)

local function handleVoting(state, assetId, voteDirection)
	local userVote = nil
	if voteDirection then
		if voteDirection > 0 then
			userVote = true
		elseif voteDirection < 0 then
			userVote = false
		end
	end

	return Cryo.Dictionary.join(state, {
		[assetId] = Cryo.Dictionary.join(state[assetId], {
			HasVoted = voteDirection ~= 0,
			UserVote = userVote,
		}),
	})
end

local function setShowVoteButtons(state, assetId)
	return Cryo.Dictionary.join(state, {
		[assetId] = Cryo.Dictionary.join(state[assetId], {
			showVoteButtons = true,
			CanVote = true,
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
		if action.insertResponse == "true" then
			return setShowVoteButtons(state, action.assetId)
		else
			-- TODO CLIDEVSRVS-1595: Error handling
			if DebugFlags.shouldDebugWarnings() then
				warn("Got false response from PostInsertAsset")
			end
		end
	end,

	[PostVote.name] = function(state, action)
		if action.voteResponse.Success then
			return handleVoting(state, action.assetId, action.userVote and 1 or -1)
		else
			-- TODO CLIDEVSRVS-1595: Error handling
			if DebugFlags.shouldDebugWarnings() then
				warn("Voting unsucessful")
			end
		end
	end,

	[PostUnvote.name] = function(state, action)
		if action.unvoteResponse.Success then
			return handleVoting(state, action.assetId, 0)
		else
			-- TODO CLIDEVSRVS-1595: Error handling
			if DebugFlags.shouldDebugWarnings() then
				warn("Unvoting unsucessful")
			end
		end
	end,
})