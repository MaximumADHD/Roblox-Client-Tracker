local Plugin = script.Parent.Parent.Parent

local Action = require(Plugin.Core.Actions.Action)

return Action(script.Name, function(assetId, newData, userVote)
	return {
		assetId = assetId,
		voteResponse = newData,
		userVote = userVote,
	}
end)
