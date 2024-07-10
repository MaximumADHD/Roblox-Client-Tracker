--!strict

local root = script.Parent.Parent

local getEngineFeatureEngineUGCValidateTotalSurfaceAreaTest =
	require(root.flags.getEngineFeatureEngineUGCValidateTotalSurfaceAreaTest)

game:DefineFastFlag("UGCValidateTotalSurfaceAreaTestBody", false)

return function()
	return getEngineFeatureEngineUGCValidateTotalSurfaceAreaTest()
		and game:GetFastFlag("UGCValidateTotalSurfaceAreaTestBody")
end
