--!strict

--[[
	validateSurfaceAppearances.lua checks that all MeshParts without a TextureID have a SurfaceAppearance child, and checks
	if a MeshPart has a TextureID it does not have a child SurfaceAppearance
]]

local root = script.Parent.Parent

local Analytics = require(root.Analytics)

local Types = require(root.util.Types)
local checkForProxyWrap = require(root.util.checkForProxyWrap)
local FailureReasonsAccumulator = require(root.util.FailureReasonsAccumulator)

local getEngineFeatureUGCValidateEditableMeshAndImage =
	require(root.flags.getEngineFeatureUGCValidateEditableMeshAndImage)

local function validateSurfaceAppearances(
	instance: Instance,
	validationContext: Types.ValidationContext
): (boolean, { string }?)
	local allowEditableInstances = if getEngineFeatureUGCValidateEditableMeshAndImage()
		then validationContext.allowEditableInstances
		else false
	-- full tree of instance + descendants
	local allDescendants: { Instance } = instance:GetDescendants()
	table.insert(allDescendants, instance)

	local reasonsAccumulator = FailureReasonsAccumulator.new()

	for _, descendant in pairs(allDescendants) do
		if not descendant:IsA("MeshPart") or (allowEditableInstances and checkForProxyWrap(descendant)) then
			continue
		end

		local meshPartHasTexture = (descendant :: MeshPart).TextureID ~= ""
		if allowEditableInstances and not meshPartHasTexture then
			local textureContent = (descendant :: MeshPart).TextureContent
			meshPartHasTexture = textureContent.Uri ~= "" or textureContent.Object ~= nil
		end
		local surfaceAppearance = descendant:FindFirstChildWhichIsA("SurfaceAppearance")

		if meshPartHasTexture then
			if surfaceAppearance then
				Analytics.reportFailure(Analytics.ErrorType.validateSurfaceAppearances_MeshPartHasTexture)
				reasonsAccumulator:updateReasons(false, {
					`TextureID and SurfaceAppearance are both defined for MeshPart ({(descendant :: Instance):GetFullName()}). Publishing will only use SurfaceApperance.`,
				})
			end
		elseif not surfaceAppearance then
			Analytics.reportFailure(Analytics.ErrorType.validateSurfaceAppearances_MissingSurfaceAppearance)
			reasonsAccumulator:updateReasons(false, {
				`({(descendant :: Instance):GetFullName()}) has an empty TextureID and no child SurfaceAppearance instance. You need to define at least one of them.`,
			})
		end
	end

	return reasonsAccumulator:getFinalResults()
end

return validateSurfaceAppearances
