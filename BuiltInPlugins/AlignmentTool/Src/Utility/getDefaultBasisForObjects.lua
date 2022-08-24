local Workspace = game:GetService("Workspace")

return function(objects)
	local terrain = Workspace.Terrain

	for i = #objects, 1, -1 do
		local object = objects[i]
		if object:IsA("BasePart") and object ~= terrain then
			return object.CFrame
		elseif object:IsA("Model") then
			local cframe, _ = object:GetBoundingBox()
			return cframe
		end
	end

	return nil
end
