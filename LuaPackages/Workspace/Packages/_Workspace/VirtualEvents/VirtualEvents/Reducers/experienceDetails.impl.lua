local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local Cryo = require(VirtualEvents.Parent.Cryo)
local Rodux = require(VirtualEvents.Parent.Rodux)
local ExperienceDetailsModel = require(VirtualEvents.Models.ExperienceDetailsModel)

export type State = {
	[string]: ExperienceDetailsModel.Response,
}

return function(NetworkingGames)
	local experienceDetails = Rodux.createReducer({}, {
		[NetworkingGames.GetExperiencesDetails.Succeeded.name] = function(state: State, action: any)
			-- We only fetch one experience at a time so we just need to grab
			-- the first element of each array
			local universeId = action.ids[1]
			local details = action.responseBody.data[1]

			return Cryo.Dictionary.join(state, {
				[universeId] = details,
			})
		end,

		[NetworkingGames.GetExperiencesDetails.Failed.name] = function(state: State, _action: any)
			return state
		end,
	})

	return experienceDetails
end
