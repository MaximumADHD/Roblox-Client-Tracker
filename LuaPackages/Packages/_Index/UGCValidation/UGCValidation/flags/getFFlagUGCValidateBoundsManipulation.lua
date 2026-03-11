--!strict
local root = script.Parent.Parent

local getEngineFeatureEngineUGCValidateBoundsManipulation =
	require(root.flags.getEngineFeatureEngineUGCValidateBoundsManipulation)

return function()
	return getEngineFeatureEngineUGCValidateBoundsManipulation()
end
