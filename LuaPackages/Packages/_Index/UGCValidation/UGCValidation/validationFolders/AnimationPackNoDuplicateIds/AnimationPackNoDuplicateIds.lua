local root = script.Parent.Parent.Parent

local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)

local getFFlagUGCValidateAnimationPackNoDuplicateIds =
	require(root.flags.getFFlagUGCValidateAnimationPackNoDuplicateIds)
local getFFlagUGCValidateMigrateSchemaProperties = require(root.flags.getFFlagUGCValidateMigrateSchemaProperties)

local AnimationPackNoDuplicateIds = {}

AnimationPackNoDuplicateIds.categories = { ValidationEnums.UploadCategory.ANIMATION_PACK }
AnimationPackNoDuplicateIds.requiredData = {
	ValidationEnums.SharedDataMember.contentIds,
}
AnimationPackNoDuplicateIds.fflag = function()
	return getFFlagUGCValidateAnimationPackNoDuplicateIds() and getFFlagUGCValidateMigrateSchemaProperties()
end
AnimationPackNoDuplicateIds.expectedFailures = {}
AnimationPackNoDuplicateIds.prereqTests = { ValidationEnums.ValidationModule.ExpectedRootSchema }

AnimationPackNoDuplicateIds.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	local contentIdMap = data.contentIds

	for assetId, entries in contentIdMap do
		if #entries > 1 then
			local paths = {}
			for _, entry in entries do
				table.insert(paths, entry.instance:GetFullName())
			end

			reporter:fail(ErrorSourceStrings.Keys.AnimationPack_DuplicateAnimationId, {
				animationId = assetId,
				instancePaths = table.concat(paths, ", "),
			})
		end
	end
end

return AnimationPackNoDuplicateIds :: Types.ValidationModule
