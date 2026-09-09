local root = script.Parent.Parent.Parent

local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)
local buildStaticCurveAnimationSchema = require(root.util.buildStaticCurveAnimationSchema)
local validateInstanceTreeAgainstSchema = require(root.util.validateInstanceTreeAgainstSchema)
local CurveAnimationHierarchyUtils = require(root.util.CurveAnimationHierarchyUtils)

local getFFlagUGCValidateCurveAnimStrictSchema = require(root.flags.getFFlagUGCValidateCurveAnimStrictSchema)
local getFFlagUGCValidationAnimationPackSupport = require(root.flags.getFFlagUGCValidationAnimationPackSupport)

local CurveAnimStrictSchema = {}

CurveAnimStrictSchema.categories = { ValidationEnums.UploadCategory.EMOTE_ANIMATION }
if getFFlagUGCValidationAnimationPackSupport() then
	table.insert(CurveAnimStrictSchema.categories, ValidationEnums.UploadCategory.ANIMATION)
end
CurveAnimStrictSchema.requiredData = {
	ValidationEnums.SharedDataMember.curveAnimations,
}
CurveAnimStrictSchema.fflag = getFFlagUGCValidateCurveAnimStrictSchema
CurveAnimStrictSchema.expectedFailures = {}
CurveAnimStrictSchema.prereqTests = { ValidationEnums.ValidationModule.CurveAnimDataAvailable }

-- The static schema allows body parts at multiple bone depths to handle partial chains
-- (e.g. Head under Spine when Chest is absent). This means the schema alone cannot prevent
-- duplicate body part folders at different nesting levels. This check ensures each body part
-- name appears at most once in the entire tree.
local function validateNoBodyPartDuplicates(curveAnim: CurveAnimation, reporter: Types.ValidationReporter)
	local bodyPartSeen: { [string]: boolean } = {}
	for _, descendant in curveAnim:GetDescendants() do
		if descendant:IsA("Folder") and CurveAnimationHierarchyUtils.isBodyPartFolderNameValid(descendant.Name) then
			if bodyPartSeen[descendant.Name] then
				reporter:fail(ErrorSourceStrings.Keys.CurveAnim_DuplicateBodyPartFolder, {
					bodyPartName = descendant.Name,
					instancePath = descendant:GetFullName(),
				})
			end
			bodyPartSeen[descendant.Name] = true
		end
	end
end

CurveAnimStrictSchema.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	local schema = buildStaticCurveAnimationSchema

	for _, inst in data.curveAnimations do
		local curveAnim = inst :: CurveAnimation

		validateInstanceTreeAgainstSchema(curveAnim, schema, reporter, {
			missingErrorKey = ErrorSourceStrings.Keys.CurveAnim_StrictSchemaViolation,
			unauthorizedErrorKey = ErrorSourceStrings.Keys.CurveAnim_StrictSchemaViolation,
			skipRootClassCheck = true,
			skipInstanceContext = true,
		})

		validateNoBodyPartDuplicates(curveAnim, reporter)
	end
end

return CurveAnimStrictSchema :: Types.ValidationModule
