local RoduxSquad = script:FindFirstAncestor("RoduxSquads")
local Root = RoduxSquad.Parent
local Cryo = require(Root.Cryo)
local Rodux = require(Root.Rodux)
local SquadInviteModel = require(RoduxSquad.Models).SquadInviteModel
local SquadInviteUpdated = require(RoduxSquad.Actions).SquadInviteUpdated

local RoduxSquadsTypes = require(script.Parent.Parent.RoduxSquadsTypes)

local DEFAULT_STATE: RoduxSquadsTypes.SquadInviteByCreated = {}

return function()
	return Rodux.createReducer(DEFAULT_STATE, {

		[SquadInviteUpdated.name] = function(
			state: RoduxSquadsTypes.SquadInviteByCreated,
			action: RoduxSquadsTypes.SquadInviteUpdatedAction
		)
			local squadInvite = action.payload.squadInvite
			return Cryo.Dictionary.join(
				state,
				{ [squadInvite.squad.createdUtc] = SquadInviteModel.format(squadInvite) }
			)
		end,
	})
end
