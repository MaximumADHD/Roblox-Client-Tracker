local RoduxSquad = script:FindFirstAncestor("RoduxSquads")
local Root = RoduxSquad.Parent
local Rodux = require(Root.Rodux)
local CurrentExperienceInviteUpdated = require(RoduxSquad.Actions).CurrentExperienceInviteUpdated
local ExperienceInviteModel = require(RoduxSquad.Models).ExperienceInviteModel

local RoduxSquadsTypes = require(script.Parent.Parent.RoduxSquadsTypes)

local DEFAULT_STATE: RoduxSquadsTypes.CurrentExperienceInvite = nil

return function(options)
	local NetworkingSquads = options.NetworkingSquads

	local getAndUpdateState = function(
		state: RoduxSquadsTypes.CurrentExperienceInvite,
		experienceInvite: RoduxSquadsTypes.ExperienceInviteModel
	)
		if state == nil then
			return experienceInvite
		elseif
			state.experienceInviteId == experienceInvite.experienceInviteId
			and state.version < experienceInvite.version
		then
			return experienceInvite
		elseif state.createdTimestamp < experienceInvite.createdTimestamp then
			return experienceInvite
		else
			return state
		end
	end

	return Rodux.createReducer(DEFAULT_STATE, {
		[NetworkingSquads.CreateExperienceInvite.Succeeded.name] = function(
			state: RoduxSquadsTypes.CurrentExperienceInvite,
			action: RoduxSquadsTypes.CreateExperienceInviteSucceeded
		)
			local experienceInvite = action.responseBody.experienceInvite
			return getAndUpdateState(state, ExperienceInviteModel.format(experienceInvite))
		end,

		[NetworkingSquads.GetExperienceInvite.Succeeded.name] = function(
			state: RoduxSquadsTypes.CurrentExperienceInvite,
			action: RoduxSquadsTypes.GetExperienceInviteSucceeded
		)
			local experienceInvite = action.responseBody.experienceInvite
			return getAndUpdateState(state, ExperienceInviteModel.format(experienceInvite))
		end,

		[NetworkingSquads.RespondExperienceInvite.Succeeded.name] = function(
			state: RoduxSquadsTypes.CurrentExperienceInvite,
			action: RoduxSquadsTypes.GetExperienceInviteSucceeded
		)
			local experienceInvite = action.responseBody.experienceInvite
			return getAndUpdateState(state, ExperienceInviteModel.format(experienceInvite))
		end,

		[CurrentExperienceInviteUpdated.name] = function(
			state: RoduxSquadsTypes.CurrentExperienceInvite,
			action: RoduxSquadsTypes.ExperienceInviteUpdatedAction
		)
			local experienceInvite = action.payload.experienceInvite
			return getAndUpdateState(state, ExperienceInviteModel.format(experienceInvite))
		end,
	})
end
