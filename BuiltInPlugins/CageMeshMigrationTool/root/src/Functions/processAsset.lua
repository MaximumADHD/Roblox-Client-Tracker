local function processAsset(assetFolder, cageMeshInfoMap)
	for _, descendant in ipairs(assetFolder:GetDescendants()) do
		if descendant:IsA("MeshPart") then
			local info = cageMeshInfoMap[descendant.Name]
			if info then
				-- clear all existing cage mesh instances
				for _, child in ipairs(descendant:GetChildren()) do
					if child:IsA("BaseWrap") then
						child:Destroy()
					end
				end

				-- clone cage mesh from imported rig
				local clone = info.cageMesh:Clone()
				if clone:IsA("WrapTarget") then
					clone.Stiffness = 1
				end
				clone.Parent = descendant

				-- warn if there's a size mismatch, very out of date art files?
				if not descendant.Size:FuzzyEq(info.size) then
					warn(descendant:GetFullName() .. " bounding box mismatch:")
					warn("\timported: " .. tostring(info.size))
					warn("\tproduction: " .. tostring(descendant.Size))
				end
			else
				warn("No cage mesh found for " .. descendant.Name)
			end
		end
	end
end

return processAsset
