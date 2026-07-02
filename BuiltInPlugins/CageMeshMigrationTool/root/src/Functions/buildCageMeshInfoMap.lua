local function buildCageMeshInfoMap(rig)
	local cageMeshInfoMap = {}

	for _, child in ipairs(rig:GetChildren()) do
		if child:IsA("MeshPart") then
			cageMeshInfoMap[child.Name] = {
				size = child.Size,
				cageMesh = child:FindFirstChildOfClass("WrapTarget") or child:FindFirstChildOfClass("WrapLayer"),
			}
		end
	end

	return cageMeshInfoMap
end

return buildCageMeshInfoMap
