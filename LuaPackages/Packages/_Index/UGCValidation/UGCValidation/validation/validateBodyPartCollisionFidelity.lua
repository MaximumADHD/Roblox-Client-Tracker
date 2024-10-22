local root = script.Parent.Parent

local Analytics = require(root.Analytics)

local Types = require(root.util.Types)
local checkForProxyWrap = require(root.util.checkForProxyWrap)

local FStringUGCValidationBodyPartCollisionFidelity =
	game:DefineFastString("UGCValidationBodyPartCollisionFidelity", "Default")
local getEngineFeatureUGCValidateEditableMeshAndImage =
	require(root.flags.getEngineFeatureUGCValidateEditableMeshAndImage)

local function validateBodyPartCollisionFidelity(
	rootInstance: Instance,
	validationContext: Types.ValidationContext
): (boolean, { string }?)
	local allowEditableInstances = if getEngineFeatureUGCValidateEditableMeshAndImage()
		then validationContext.allowEditableInstances
		else false
	local instances = rootInstance:GetDescendants()
	table.insert(instances, 1, rootInstance)

	local expectedCollisionFidelity = Enum.CollisionFidelity.Default
	pcall(function()
		expectedCollisionFidelity = Enum.CollisionFidelity[FStringUGCValidationBodyPartCollisionFidelity]
	end)

	local failures = {}

	for _, instance in instances do
		if allowEditableInstances and checkForProxyWrap(instance) then
			continue
		end
		if instance:IsA("MeshPart") and instance.CollisionFidelity ~= expectedCollisionFidelity then
			table.insert(
				failures,
				`Expected {instance:GetFullName()}.CollisionFidelity to be {expectedCollisionFidelity.Name}`
			)
		end
	end

	if #failures == 0 then
		return true
	else
		Analytics.reportFailure(Analytics.ErrorType.validateBodyPartCollisionFidelity)
		return false, failures
	end
end

return validateBodyPartCollisionFidelity
