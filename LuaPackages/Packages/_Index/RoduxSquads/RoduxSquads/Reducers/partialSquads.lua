local RoduxSquad = script:FindFirstAncestor("RoduxSquads")
local Root = RoduxSquad.Parent
local Cryo = require(Root.Cryo)
local Rodux = require(Root.Rodux)

local PartialSquadAdded = require(RoduxSquad.Actions).PartialSquadAdded
local PartialSquadRemoved = require(RoduxSquad.Actions).PartialSquadRemoved

local PartialSquadModel = require(RoduxSquad.Models).PartialSquadModel

local RoduxSquadsTypes = require(script.Parent.Parent.RoduxSquadsTypes)

local DEFAULT_STATE: RoduxSquadsTypes.PartialSquads = {}

return function()
	return Rodux.createReducer(DEFAULT_STATE, {
		[PartialSquadAdded.name] = function(
			state: RoduxSquadsTypes.PartialSquads,
			action: RoduxSquadsTypes.PartialSquadAdded
		)
			local partialSquad = PartialSquadModel.format(action.payload.partialSquad)
			return Cryo.Dictionary.join(state, { [partialSquad.channelId] = partialSquad })
		end,

		[PartialSquadRemoved.name] = function(
			state: RoduxSquadsTypes.PartialSquads,
			action: RoduxSquadsTypes.PartialSquadRemoved
		)
			local channelId = action.payload.channelId
			return Cryo.Dictionary.join(state, { [channelId] = Cryo.None })
		end,
	})
end
