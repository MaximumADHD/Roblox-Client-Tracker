--!strict

local root = script.Parent.Parent

local getEngineFeatureEngineUGCValidateCoplanarTriTest =
	require(root.flags.getEngineFeatureEngineUGCValidateCoplanarTriTest)

game:DefineFastFlag("UGCValidateCoplanarTriTestBody", false)

return function()
	return getEngineFeatureEngineUGCValidateCoplanarTriTest() and game:GetFastFlag("UGCValidateCoplanarTriTestBody")
end
