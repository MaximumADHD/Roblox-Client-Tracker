local Workspace = game:GetService("Workspace")

local Plugin = script.Parent.Parent.Parent

local getFFlagImproveDragOrientation = require(Plugin.Src.Flags.getFFlagImproveDragOrientation)

if getFFlagImproveDragOrientation() then
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
	end
else
	return function(objects)
		local terrain = Workspace.Terrain

		for _, object in ipairs(objects) do
			if object:IsA("BasePart") and object ~= terrain then
				return object.CFrame
			elseif object:IsA("Model") then
				local cframe, _ = object:GetBoundingBox()
				return cframe
			end
		end
	end
end
