--!nonstrict
local SocialTab = script:FindFirstAncestor("SocialTab")
local dependencies = require(SocialTab.dependencies)

local llama = dependencies.llama
local RoduxPresence = dependencies.RoduxPresence

local oldUserPresence = {
	"OFFLINE",
	"ONLINE",
	"IN_GAME",
	"IN_STUDIO",
}

local DEFAULT_ISO_DATE = "1970-01-01T00:00:00Z"

local function convertFromOldPresenceModel(oldPresenceModel)
	local presenceModel = RoduxPresence.Models.Presence.new(llama.Dictionary.join(oldPresenceModel, {
		presence = llama.None,
		userPresenceType = (table.find(oldUserPresence, oldPresenceModel.presence) or 1) - 1,

		gameInstanceId = llama.None,
		gameId = oldPresenceModel.gameInstanceId,

		-- DateTime is still behind a flag that has not been cleaned up.
		lastOnline = DateTime.now() and DateTime.fromUnixTimestamp(oldPresenceModel.lastOnline or 0):ToIsoDate()
			or DEFAULT_ISO_DATE,
	}))

	return RoduxPresence.Actions.ReceivedUserPresence(presenceModel)
end

local convertActionsFunctions = {
	ReceivedUserPresence = function(action)
		if action.payload then
			return action
		end

		return { convertFromOldPresenceModel(action) }
	end,
}

local reducer = RoduxPresence.installReducer()

return function(state, action)
	state = state or {
		byUserId = {},
		byGameId = {},
		byGameInstanceId = {},
		byPlaceId = {},
	}

	local actions = { action }
	local convert = convertActionsFunctions[action.type]
	if convert then
		actions = convert(action)
	end

	return llama.List.reduce(actions, reducer, state)
end
