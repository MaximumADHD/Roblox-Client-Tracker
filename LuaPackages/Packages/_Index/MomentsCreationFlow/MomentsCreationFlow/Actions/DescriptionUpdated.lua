local MomentsCreationFlow = script:FindFirstAncestor("MomentsCreationFlow")
local Packages = MomentsCreationFlow.Parent

local Rodux = require(Packages.Rodux)

export type Type = {
	description: string,
}

return Rodux.makeActionCreator(script.Name, function(description: string): Type
	return {
		description = description,
	}
end)
