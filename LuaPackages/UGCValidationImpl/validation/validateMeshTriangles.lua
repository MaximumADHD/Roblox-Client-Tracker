local ContentProvider = game:GetService("ContentProvider")

local root = script.Parent.Parent

local Constants = require(root.Constants)

-- ensures accessory mesh does not have more triangles than Constants.MAX_HAT_TRIANGLES
local function validateMeshTriangles(isAsync, instance)
	-- check mesh triangles
	-- this is guaranteed to exist thanks to validateInstanceTree being called beforehand
	local mesh = instance.Handle:FindFirstChildOfClass("SpecialMesh")
	if not mesh then
		return false, { "Could not find mesh" }
	end

	if mesh.MeshId == "" then
		return false, { "Mesh must contain valid MeshId" }
	end

	if mesh.TextureId == "" then
		return false, { "Mesh must contain valid TextureId" }
	end

	local success, triangles = pcall(function()
		if isAsync then
			return ContentProvider:CalculateNumTrianglesInMesh(mesh.MeshId)
		else
			return ContentProvider:CalculateNumTrianglesInMeshSync(mesh.MeshId)
		end
	end)

	if not success then
		return false, { "Failed to load mesh data" }
	elseif triangles > Constants.MAX_HAT_TRIANGLES then
		return false, {
			string.format(
				"Mesh has %d triangles, but the limit is %d",
				triangles,
				Constants.MAX_HAT_TRIANGLES
			)
		}
	end

	return true
end

return validateMeshTriangles