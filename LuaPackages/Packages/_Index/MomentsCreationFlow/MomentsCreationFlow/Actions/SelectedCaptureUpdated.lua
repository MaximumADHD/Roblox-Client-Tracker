local MomentsCreationFlow = script:FindFirstAncestor("MomentsCreationFlow")
local Packages = MomentsCreationFlow.Parent

local Rodux = require(Packages.Rodux)

export type Type = {
	capture: Capture,
}

return Rodux.makeActionCreator(script.Name, function(capture: Capture): Type
	return {
		capture = capture,
	}
end)
