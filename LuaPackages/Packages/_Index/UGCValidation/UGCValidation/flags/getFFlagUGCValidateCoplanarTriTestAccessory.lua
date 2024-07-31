--!strict

local root = script.Parent.Parent

local getEngineFeatureEngineUGCValidateCoplanarTriTest =
	require(root.flags.getEngineFeatureEngineUGCValidateCoplanarTriTest)

game:DefineFastFlag("UGCValidateCoplanarTriTestAccessory", false)

return function()
	return getEngineFeatureEngineUGCValidateCoplanarTriTest()
		and game:GetFastFlag("UGCValidateCoplanarTriTestAccessory")
end
