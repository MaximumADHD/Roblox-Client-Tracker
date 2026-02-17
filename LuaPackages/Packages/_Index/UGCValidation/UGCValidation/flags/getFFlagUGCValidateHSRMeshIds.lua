local root = script.Parent.Parent

local getEngineFeatureUGCValidateHSRMeshIds = require(root.flags.getEngineFeatureUGCValidateHSRMeshIds)

game:DefineFastFlag("UGCValidateHSRMeshIdsLuaFlag", false)

return function()
	return game:GetFastFlag("UGCValidateHSRMeshIdsLuaFlag") and getEngineFeatureUGCValidateHSRMeshIds()
end
