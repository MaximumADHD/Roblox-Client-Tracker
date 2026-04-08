local MomentsCreationFlow = script:FindFirstAncestor("MomentsCreationFlow")
local Packages = MomentsCreationFlow.Parent

local Rodux = require(Packages.Rodux)

local CreationFlowState = require(MomentsCreationFlow.Enums.CreationFlowState)

export type Type = {
	currentState: CreationFlowState.CreationFlowState,
}

return Rodux.makeActionCreator(script.Name, function(currentState: CreationFlowState.CreationFlowState): Type
	return {
		currentState = currentState,
	}
end)
