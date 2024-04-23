local RoduxSquad = script:FindFirstAncestor("RoduxSquads")
local Root = RoduxSquad.Parent
local Rodux = require(Root.Rodux)
local CurrentSquadUpdated = require(RoduxSquad.Actions).CurrentSquadUpdated
local SquadModel = require(RoduxSquad.Models).SquadModel

local RoduxSquadsTypes = require(script.Parent.Parent.RoduxSquadsTypes)

local DEFAULT_STATE: RoduxSquadsTypes.CurrentSquad = nil

return function(options)
	local NetworkingSquads = options.NetworkingSquads

	local getAndUpdateState = function(state: RoduxSquadsTypes.CurrentSquad, squad: RoduxSquadsTypes.SquadModel)
		-- Update if there is not a current squad or the created timestamp is
		-- newer than the current squad. We might want to add an updated
		-- timestamp in the future.
		if state == nil or squad.createdUtc >= state.createdUtc then
			return squad
		else
			return state
		end
	end

	return Rodux.createReducer(DEFAULT_STATE, {
		[NetworkingSquads.CreateOrJoinSquad.Succeeded.name] = function(
			state: RoduxSquadsTypes.CurrentSquad,
			action: RoduxSquadsTypes.CreateOrJoinSquadSucceeded
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
			-- Note: We can consider removing this endpoint. The use case is to
			-- fetch squads user is not in. It's just used for platform chat UI
			-- which doesn't need the full squad model.
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
			state: RoduxSquadsTypes.CurrentSquad,
			action: RoduxSquadsTypes.LeaveSquadSucceeded
		)
			if state ~= nil then
				local squadId = tostring(action.ids[1])
				if squadId ~= state.squadId then
					return state
				end
			end

			return nil
		end,

		[CurrentSquadUpdated.name] = function(
			state: RoduxSquadsTypes.CurrentSquad,
			action: RoduxSquadsTypes.SquadUpdatedAction
		)
			local squad = action.payload.squad
			return getAndUpdateState(state, SquadModel.format(squad))
		end,
	})
end
