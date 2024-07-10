--!strict

local root = script.Parent.Parent

local getEngineFeatureEngineUGCValidateTotalSurfaceAreaTest =
	require(root.flags.getEngineFeatureEngineUGCValidateTotalSurfaceAreaTest)

game:DefineFastFlag("UGCValidateTotalSurfaceAreaTestAccessory", false)

return function()
	return getEngineFeatureEngineUGCValidateTotalSurfaceAreaTest()
		and game:GetFastFlag("UGCValidateTotalSurfaceAreaTestAccessory")
end
