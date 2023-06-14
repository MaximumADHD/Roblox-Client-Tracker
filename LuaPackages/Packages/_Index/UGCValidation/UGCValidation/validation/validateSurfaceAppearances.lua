--!strict

--[[
	validateSurfaceAppearances.lua checks that all SurfaceAppearance's parent MeshPart does not have a Texture in the TextureID property
]]

local function validateSurfaceAppearances(instance: Instance): (boolean, { string }?)
	for _, descendant in pairs(instance:GetDescendants()) do
		if not descendant:IsA("SurfaceAppearance") then
			continue
		end
		assert(descendant.Parent and descendant.Parent:IsA("MeshPart")) -- checked in validateSchema

		if descendant.Parent.TextureID ~= "" then
			return false,
				{
					`SurfaceAppearance's parent ({(descendant.Parent :: Instance):GetFullName()}) must have an empty TextureID`,
				}
		end
	end
	return true
end

return validateSurfaceAppearances
