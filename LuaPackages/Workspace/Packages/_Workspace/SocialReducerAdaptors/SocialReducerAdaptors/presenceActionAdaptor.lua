local SocialReducerAdaptors = script:FindFirstAncestor("SocialReducerAdaptors")
local dependencies = require(SocialReducerAdaptors.dependencies)
local llama = dependencies.llama

type OldPresence = {
	presence: string,
	lastLocation: string,
	placeId: number | string,
	rootPlaceId: number | string,
	gameInstanceId: number | string,
	universeId: number | string,
	userId: number | string,
	lastOnline: number?,
	[string]: any,
}

return function(roduxPresence)
	local convertFromOldPresenceModel = function(oldPresenceModel: OldPresence)
		local oldUserPresence = {
			"OFFLINE",
			"ONLINE",
			"IN_GAME",
			"IN_STUDIO",
		}

		local DEFAULT_ISO_DATE = "1970-01-01T00:00:00Z"

		local presenceModel = roduxPresence.Models.Presence.new(llama.Dictionary.join(oldPresenceModel, {
			presence = llama.None,
			userPresenceType = (table.find(oldUserPresence, oldPresenceModel.presence) or 1) - 1,

			gameInstanceId = llama.None,
			gameId = oldPresenceModel.gameInstanceId,

			-- DateTime is still behind a flag that has not been cleaned up.
			lastOnline = DateTime.now() and DateTime.fromUnixTimestamp(oldPresenceModel.lastOnline or 0):ToIsoDate()
				or DEFAULT_ISO_DATE,
			type = llama.None,
		}))

		return roduxPresence.Actions.ReceivedUserPresence(presenceModel)
	end

	return {
		ReceivedUserPresence = function(action: OldPresence)
			if action.payload then
				return { action }
			end

			return { convertFromOldPresenceModel(action) }
		end,
	}
end
