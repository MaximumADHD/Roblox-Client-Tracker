--!strict
local root = script.Parent.Parent

local Constants = require(root.Constants)

return function(instance: MeshPart, allowEditableInstances: boolean?)
	local meshId = instance.MeshId
	if not allowEditableInstances then
		return meshId
	end
	local alternateId = instance:GetAttribute(Constants.AlternateMeshIdAttributeName)
	return if alternateId and alternateId ~= "" then alternateId else meshId
end
