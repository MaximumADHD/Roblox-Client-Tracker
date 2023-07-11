--!strict

--[[
	validateCageVertices.lua checks that WrapTarget cage meshes have the correct vertex count
]]

local root = script.Parent.Parent

local Constants = require(root.Constants)

local UGCValidationService = game:GetService("UGCValidationService")

local function validateCageVertices(
	contentId: string,
	wrapTarget: WrapTarget,
	fieldName: string,
	isServer: boolean
): (boolean, { string }?)
	local success, verts = pcall(function()
		return UGCValidationService:GetMeshVerts(contentId)
	end)

	if not success then
		local errorMsg =
			string.format("Failed to read mesh %s.%s ( %s )", wrapTarget:GetFullName(), fieldName, contentId)
		if isServer then
			-- there could be many reasons that an error occurred, the asset is not necessarilly incorrect, we just didn't get as
			-- far as testing it, so we throw an error which means the RCC will try testing the asset again, rather than returning false
			-- which would mean the asset failed validation
			error(errorMsg)
		end
		return false, { errorMsg }
	end

	-- earlier code means we wouldn't get this far if the WrapTarget was incorrectly named
	local requiredVertCount =
		assert(Constants.WRAP_TARGET_CAGE_MESH_VERTS[wrapTarget.Name], "Incorrectly named WrapTarget")
	if #verts ~= requiredVertCount then
		return false,
			{
				string.format(
					"%s.%s ( %s ) should have %d vertices",
					wrapTarget:GetFullName(),
					fieldName,
					contentId,
					requiredVertCount
				),
			}
	end
	return true
end

return validateCageVertices
