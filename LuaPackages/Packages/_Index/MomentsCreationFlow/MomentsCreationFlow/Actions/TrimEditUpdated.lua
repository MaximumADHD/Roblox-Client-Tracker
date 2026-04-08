local MomentsCreationFlow = script:FindFirstAncestor("MomentsCreationFlow")
local Packages = MomentsCreationFlow.Parent

local MomentsCommon = require(Packages.MomentsCommon)
local Rodux = require(Packages.Rodux)

type TrimEdit = MomentsCommon.TrimEdit

export type Type = {
	trimEdit: TrimEdit,
}

return Rodux.makeActionCreator(script.Name, function(trimEdit: TrimEdit): Type
	return {
		trimEdit = trimEdit,
	}
end)
