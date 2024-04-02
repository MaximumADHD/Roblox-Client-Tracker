local RoduxSquad = script:FindFirstAncestor("RoduxSquads")
local Root = RoduxSquad.Parent
local Rodux = require(Root.Rodux)
local CurrentExperienceInviteUpdated = require(RoduxSquad.Actions).CurrentExperienceInviteUpdated

local RoduxSquadsTypes = require(script.Parent.Parent.RoduxSquadsTypes)

local DEFAULT_STATE: RoduxSquadsTypes.ExperienceInviteModel = nil

return function(options)
	local NetworkingSquads = options.NetworkingSquads

	return Rodux.createReducer(DEFAULT_STATE, {
		[NetworkingSquads.CreateExperienceInvite.Succeeded.name] = function(
			state: RoduxSquadsTypes.ExperienceInviteModel,
			action: RoduxSquadsTypes.CreateExperienceInviteSucceeded
		)
			local experienceInvite = action.responseBody.experienceInvite
			if not state or state.createdUtc <= experienceInvite.createdUtc then
				return experienceInvite
			end

			return state
		end,

		[NetworkingSquads.GetExperienceInvite.Succeeded.name] = function(
			state: RoduxSquadsTypes.ExperienceInviteModel,
			action: RoduxSquadsTypes.GetExperienceInviteSucceeded
		)
			local experienceInvite = action.responseBody.experienceInvite
			if not experienceInvite then
				return nil
			end

			if not state or state.createdUtc <= experienceInvite.createdUtc then
				return experienceInvite
			end

			return state
		end,

		[NetworkingSquads.RespondExperienceInvite.Succeeded.name] = function(
			state: RoduxSquadsTypes.ExperienceInviteModel,
			action: RoduxSquadsTypes.GetExperienceInviteSucceeded
		)
			local experienceInvite = action.responseBody.experienceInvite
			if not state or state.createdUtc <= experienceInvite.createdUtc then
				return experienceInvite
			end

			return state
		end,

		[CurrentExperienceInviteUpdated.name] = function(
			state: RoduxSquadsTypes.ExperienceInviteModel,
			action: RoduxSquadsTypes.ExperienceInviteUpdatedAction
		)
			local experienceInvite = action.payload.experienceInvite
			if not state or state.createdUtc <= experienceInvite.createdUtc then
				return experienceInvite
			end

			return state
		end,
	})
end
