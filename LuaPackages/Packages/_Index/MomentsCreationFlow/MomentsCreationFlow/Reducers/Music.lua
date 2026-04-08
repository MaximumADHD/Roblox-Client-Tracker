local MomentsCreationFlow = script:FindFirstAncestor("MomentsCreationFlow")
local Packages = MomentsCreationFlow.Parent

local Cryo = require(Packages.Cryo)
local MomentsCommon = require(Packages.MomentsCommon)
local Rodux = require(Packages.Rodux)

local CreationFlowMusicInfoRetrieved = require(MomentsCreationFlow.Actions.CreationFlowMusicInfoRetrieved)

type Music = MomentsCommon.Music

export type State = {
	[number]: Music,
}

local initialState: State = {}

return Rodux.createReducer(initialState, {
	[CreationFlowMusicInfoRetrieved.name] = function(state: State, action: CreationFlowMusicInfoRetrieved.Type): State
		return Cryo.Dictionary.union(state, action.musicInfos)
	end,
})
