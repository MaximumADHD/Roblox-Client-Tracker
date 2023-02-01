local RoduxSquad = script:FindFirstAncestor("RoduxSquads")
local Root = RoduxSquad.Parent
local Cryo = require(Root.Cryo)
local Rodux = require(Root.Rodux)
local ExperienceInviteModel = require(RoduxSquad.Models).ExperienceInviteModel
local ExperienceInviteRemoved = require(RoduxSquad.Actions).ExperienceInviteRemoved
local ExperienceInviteResponded = require(RoduxSquad.Actions).ExperienceInviteResponded
local ExperienceInviteUpdated = require(RoduxSquad.Actions).ExperienceInviteUpdated

local RoduxSquadsTypes = require(script.Parent.Parent.RoduxSquadsTypes)

local DEFAULT_STATE: RoduxSquadsTypes.ExperienceInviteByCreated = {}

return function(options)
	local NetworkingSquads = options.NetworkingSquads

	return Rodux.createReducer(DEFAULT_STATE, {
		[NetworkingSquads.CreateExperienceInvite.Succeeded.name] = function(
			state: RoduxSquadsTypes.ExperienceInviteByCreated,
			action: RoduxSquadsTypes.CreateExperienceInviteSucceeded
		)
			local experienceInvite = action.responseBody.experienceInvite
			return Cryo.Dictionary.join(
				state,
				{ [experienceInvite.created] = ExperienceInviteModel.format(experienceInvite) }
			)
		end,

		[NetworkingSquads.GetExperienceInvite.Succeeded.name] = function(
			state: RoduxSquadsTypes.ExperienceInviteByCreated,
			action: RoduxSquadsTypes.GetExperienceInviteSucceeded
		)
			local experienceInvite = action.responseBody.experienceInvite
			return Cryo.Dictionary.join(
				state,
				{ [experienceInvite.created] = ExperienceInviteModel.format(experienceInvite) }
			)
		end,

		[NetworkingSquads.RespondExperienceInvite.Succeeded.name] = function(
			state: RoduxSquadsTypes.ExperienceInviteByCreated,
			action: RoduxSquadsTypes.GetExperienceInviteSucceeded
		)
			local experienceInvite = action.responseBody.experienceInvite
			return Cryo.Dictionary.join(
				state,
				{ [experienceInvite.created] = ExperienceInviteModel.format(experienceInvite) }
			)
		end,

		[ExperienceInviteRemoved.name] = function(
			state: RoduxSquadsTypes.ExperienceInviteByCreated,
			action: RoduxSquadsTypes.ExperienceInviteRemovedAction
		)
			local inviteId = action.payload.inviteId

			local removedExperienceInvites = {}
			for _, experienceInvite in pairs(state) do
				if experienceInvite.inviteId == inviteId then
					removedExperienceInvites[experienceInvite.created] = Cryo.None
					break
				end
			end

			return Cryo.Dictionary.join(state, removedExperienceInvites)
		end,

		[ExperienceInviteUpdated.name] = function(
			state: RoduxSquadsTypes.ExperienceInviteByCreated,
			action: RoduxSquadsTypes.ExperienceInviteUpdatedAction
		)
			local experienceInvite = action.payload.experienceInvite
			return Cryo.Dictionary.join(
				state,
				{ [experienceInvite.created] = ExperienceInviteModel.format(experienceInvite) }
			)
		end,

		[ExperienceInviteResponded.name] = function(
			state: RoduxSquadsTypes.ExperienceInviteByCreated,
			action: RoduxSquadsTypes.ExperienceInviteRespondedAction
		)
			local inviteId = action.payload.inviteId
			local userId = action.payload.userId
			local response = action.payload.response

			for _, experienceInvite in pairs(state) do
				if experienceInvite.inviteId == inviteId then
					experienceInvite.responses[userId] = response
					break
				end
			end

			return state
		end,
	})
end
