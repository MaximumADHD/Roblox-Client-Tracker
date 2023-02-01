local RoduxSquad = script:FindFirstAncestor("RoduxSquads")
local Root = RoduxSquad.Parent
local Rodux = require(Root.Rodux)
local SquadModel = require(RoduxSquad.Models).SquadModel
local SquadUpdated = require(RoduxSquad.Actions).SquadUpdated

local RoduxSquadsTypes = require(script.Parent.Parent.RoduxSquadsTypes)

local DEFAULT_STATE: RoduxSquadsTypes.CurrentSquad = nil

return function(options)
	local NetworkingSquads = options.NetworkingSquads

	local getAndUpdateState = function(state: RoduxSquadsTypes.CurrentSquad, squad: RoduxSquadsTypes.SquadModel)
		-- Update if there is not a current squad or the updated timestamp is
		-- newer than the current squad.
		if state == nil or squad.updatedUtc > state.updatedUtc then
			return squad
		else
			return state
		end
	end

	return Rodux.createReducer(DEFAULT_STATE, {
		[NetworkingSquads.CreateSquad.Succeeded.name] = function(
			state: RoduxSquadsTypes.CurrentSquad,
			action: RoduxSquadsTypes.CreateSquadSucceeded
		)
			local squad = action.responseBody.squad
			return getAndUpdateState(state, SquadModel.format(squad))
		end,

		[NetworkingSquads.GetSquadActive.Succeeded.name] = function(
			state: RoduxSquadsTypes.CurrentSquad,
			action: RoduxSquadsTypes.GetSquadActiveSucceeded
		)
			local squad = action.responseBody.squad
			--  User might not be in a squad.
			if squad then
				return getAndUpdateState(state, SquadModel.format(squad))
			else
				return nil
			end
		end,

		[NetworkingSquads.GetSquadFromSquadId.Succeeded.name] = function(
			state: RoduxSquadsTypes.CurrentSquad,
			action: RoduxSquadsTypes.GetSquadFromSquadIdSucceeded
		)
			local squad = action.responseBody.squad
			return getAndUpdateState(state, SquadModel.format(squad))
		end,

		[NetworkingSquads.JoinSquad.Succeeded.name] = function(
			state: RoduxSquadsTypes.CurrentSquad,
			action: RoduxSquadsTypes.JoinSquadSucceeded
		)
			local squad = action.responseBody.squad
			return getAndUpdateState(state, SquadModel.format(squad))
		end,

		[NetworkingSquads.LeaveSquad.Succeeded.name] = function(
			_: RoduxSquadsTypes.CurrentSquad,
			_: RoduxSquadsTypes.LeaveSquadSucceeded
		)
			return nil
		end,

		[NetworkingSquads.SquadRemove.Succeeded.name] = function(
			state: RoduxSquadsTypes.CurrentSquad,
			action: RoduxSquadsTypes.SquadRemoveSucceeded
		)
			local squad = action.responseBody.squad
			return getAndUpdateState(state, SquadModel.format(squad))
		end,

		[SquadUpdated.name] = function(state: RoduxSquadsTypes.CurrentSquad, action: RoduxSquadsTypes.SquadUpdatedAction)
			local squad = action.payload.squad
			return getAndUpdateState(state, SquadModel.format(squad))
		end,
	})
end
