local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local Cryo = require(VirtualEvents.Parent.Cryo)
local Rodux = require(VirtualEvents.Parent.Rodux)
local ExperienceMediaModel = require(VirtualEvents.Models.ExperienceMediaModel)

export type State = {
	[string]: ExperienceMediaModel.Response,
}

return function(NetworkingGames)
	local events = Rodux.createReducer({}, {
		[NetworkingGames.GetExperienceMedia.Succeeded.name] = function(state: State, action: any)
			local universeId = action.ids[1]

			return Cryo.Dictionary.join(state, {
				[universeId] = action.responseBody.data,
			})
		end,

		[NetworkingGames.GetExperienceMedia.Failed.name] = function(state: State, _action: any)
			return state
		end,
	})

	return events
end
