--!strict

--[[
	validateSurfaceAppearances.lua checks that all MeshParts without a TextureID have a SurfaceAppearance child, and checks
	if a MeshPart has a TextureID it does not have a child SurfaceAppearance
]]

local root = script.Parent.Parent

local FailureReasonsAccumulator = require(root.util.FailureReasonsAccumulator)

local function validateSurfaceAppearances(instance: Instance): (boolean, { string }?)
	-- full tree of instance + descendants
	local allDescendants: { Instance } = instance:GetDescendants()
	table.insert(allDescendants, instance)

	local reasonsAccumulator = FailureReasonsAccumulator.new()

	for _, descendant in pairs(allDescendants) do
		if not descendant:IsA("MeshPart") then
			continue
		end

		local meshPartHasTexture = (descendant :: MeshPart).TextureID ~= ""
		local surfaceAppearance = descendant:FindFirstChildWhichIsA("SurfaceAppearance") :: SurfaceAppearance

		if meshPartHasTexture then
			if surfaceAppearance then
				if
					not reasonsAccumulator:updateReasons(false, {
						`SurfaceAppearance's parent ({(descendant :: Instance):GetFullName()}) must have an empty TextureID`,
					})
				then
					return reasonsAccumulator:getFinalResults()
				end
			end
		elseif not surfaceAppearance then
			if
				not reasonsAccumulator:updateReasons(false, {
					`({(descendant :: Instance):GetFullName()}) has an empty TextureID, so must have a child SurfaceAppearance`,
				})
			then
				return reasonsAccumulator:getFinalResults()
			end
		end
	end
	return reasonsAccumulator:getFinalResults()
end

return validateSurfaceAppearances
