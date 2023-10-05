local root = script.Parent.Parent

local Analytics = require(root.Analytics)

local FStringUGCValidationBodyPartCollisionFidelity =
	game:DefineFastString("UGCValidationBodyPartCollisionFidelity", "Default")

local function validateBodyPartCollisionFidelity(rootInstance: Instance): (boolean, { string }?)
	local instances = rootInstance:GetDescendants()
	table.insert(instances, 1, rootInstance)

	local expectedCollisionFidelity = Enum.CollisionFidelity.Default
	pcall(function()
		expectedCollisionFidelity = Enum.CollisionFidelity[FStringUGCValidationBodyPartCollisionFidelity]
	end)

	local failures = {}

	for _, instance in instances do
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
