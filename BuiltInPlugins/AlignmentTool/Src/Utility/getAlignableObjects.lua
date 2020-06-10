local Workspace = game:GetService("Workspace")

return function(objects)
	local alignableObjects = {}
	local allParts = {}

	local terrain = Workspace.Terrain

	for _, object in ipairs(objects) do
		if object:IsA("BasePart") and object ~= terrain then
			table.insert(alignableObjects, object)
			table.insert(allParts, object)
		elseif object:IsA("Model") then
			table.insert(alignableObjects, object)
			for _, descendant in ipairs(object:GetDescendants()) do
				if descendant:IsA("BasePart") then
					table.insert(allParts, descendant)
				end
			end
		end
	end

	return alignableObjects, allParts
end
