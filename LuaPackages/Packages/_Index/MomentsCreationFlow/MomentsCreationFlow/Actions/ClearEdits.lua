local MomentsCreationFlow = script:FindFirstAncestor("MomentsCreationFlow")
local Packages = MomentsCreationFlow.Parent

local Rodux = require(Packages.Rodux)

local CreationFlowState = require(MomentsCreationFlow.Enums.CreationFlowState)

export type Type = {
	newState: CreationFlowState.CreationFlowState,
}

return Rodux.makeActionCreator(script.Name, function(newState: CreationFlowState.CreationFlowState): Type
	return {
		newState = newState,
	}
end)
