local Plugin = script.Parent.Parent.Parent

local Packages = Plugin.Packages
local Util = require(Packages.Framework).Util
local Action = Util.Action

--[[
	voteLoading: nil by default, true if we're waiting for the request to get the vote, false once we get a response (regardless of whether it's successful)
 	voteFetchAttempted: true if we made a request to get the vote, nil otherwise.
	We could just use voteLoading as a tri-state boolean and exclude voteFetchAttempted, but that's less intuitive
--]]
return Action(script.Name, function(assetId: number, voteLoading: boolean, voteFetchAttempted: boolean)
	return {
		AssetId = assetId,
		VoteLoading = voteLoading,
		VoteFetchAttempted = voteFetchAttempted,
	}
end)
