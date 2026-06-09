local root = script.Parent.Parent.Parent

local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)

local getFFlagUGCValidateMigrateSchemaProperties = require(root.flags.getFFlagUGCValidateMigrateSchemaProperties)

local FStringUGCValidationBodyPartCollisionFidelity =
	game:DefineFastString("UGCValidationBodyPartCollisionFidelity", "Default")

local CollisionFidelityCorrect = {}

CollisionFidelityCorrect.categories = {
	ValidationEnums.UploadCategory.TORSO_AND_LIMBS,
	ValidationEnums.UploadCategory.DYNAMIC_HEAD,
}
CollisionFidelityCorrect.requiredData = {
	ValidationEnums.SharedDataMember.rootInstance,
}
CollisionFidelityCorrect.fflag = getFFlagUGCValidateMigrateSchemaProperties
CollisionFidelityCorrect.expectedFailures = {}

CollisionFidelityCorrect.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	local instance = data.rootInstance :: Instance

	local expectedCollisionFidelity = Enum.CollisionFidelity.Default
	-- pcall guards against the FString being set to a CollisionFidelity name not
	-- present on the engine's enum (e.g. an old client/RCC reading a value that
	-- was added in a newer engine). The fallback is `Default`, matching
	-- legacy validateBodyPartCollisionFidelity.lua:18-21.
	pcall(function()
		expectedCollisionFidelity = Enum.CollisionFidelity[FStringUGCValidationBodyPartCollisionFidelity]
	end)

	local instances = instance:GetDescendants()
	table.insert(instances, 1, instance)

	for _, inst in instances do
		if inst:IsA("MeshPart") and inst.CollisionFidelity ~= expectedCollisionFidelity then
			reporter:fail(ErrorSourceStrings.Keys.CollisionFidelityWrong, {
				InstancePath = inst:GetFullName(),
				ExpectedFidelity = expectedCollisionFidelity.Name,
			})
		end
	end
end

return CollisionFidelityCorrect :: Types.ValidationModule
