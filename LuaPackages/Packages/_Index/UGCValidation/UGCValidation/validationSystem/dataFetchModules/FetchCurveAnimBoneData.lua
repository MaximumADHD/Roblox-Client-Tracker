local root = script.Parent.Parent.Parent
local CurveAnimBoneHierarchyUtils = require(root.util.CurveAnimBoneHierarchyUtils)

local FetchCurveAnimBoneData = {}

function FetchCurveAnimBoneData.getData(curveAnimations: { any }?): any
	if not curveAnimations then
		return nil
	end
	if typeof(curveAnimations) ~= "table" or #curveAnimations == 0 then
		return nil
	end

	local hasBones = false
	for _, inst in curveAnimations do
		for _, desc in (inst :: Instance):GetDescendants() do
			if desc:IsA("Folder") and CurveAnimBoneHierarchyUtils.isBoneFolderName(desc.Name) then
				hasBones = true
				break
			end
		end
		if hasBones then
			break
		end
	end

	if not hasBones then
		return nil
	end

	return { hasBones = true }
end

return FetchCurveAnimBoneData
