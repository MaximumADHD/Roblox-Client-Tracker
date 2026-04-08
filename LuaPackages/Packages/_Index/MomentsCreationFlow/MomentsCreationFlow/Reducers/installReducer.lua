local MomentsCreationFlow = script:FindFirstAncestor("MomentsCreationFlow")
local Packages = MomentsCreationFlow.Parent

local Rodux = require(Packages.Rodux)

local CreationFlow = require(MomentsCreationFlow.Reducers.CreationFlow)
local Music = require(MomentsCreationFlow.Reducers.Music)

export type State = {
	CreationFlow: CreationFlow.State,
	Music: Music.State,
}

return function(): (state: State?, action: any?) -> State
	return Rodux.combineReducers({
		CreationFlow = CreationFlow,
		Music = Music,
	})
end
