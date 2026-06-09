local CollectionService = game:GetService("CollectionService")

local root = script.Parent.Parent.Parent

local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)

local getFFlagUGCValidateMigrateCurveAnim = require(root.flags.getFFlagUGCValidateMigrateCurveAnim)
local getFFlagUGCValidationAnimationPackSupport = require(root.flags.getFFlagUGCValidationAnimationPackSupport)

local CurveAnimTagsValid = {}

CurveAnimTagsValid.categories = { ValidationEnums.UploadCategory.EMOTE_ANIMATION }
if getFFlagUGCValidationAnimationPackSupport() then
	table.insert(CurveAnimTagsValid.categories, ValidationEnums.UploadCategory.ANIMATION)
end
CurveAnimTagsValid.requiredData = {
	ValidationEnums.SharedDataMember.curveAnimations,
}
CurveAnimTagsValid.fflag = getFFlagUGCValidateMigrateCurveAnim
CurveAnimTagsValid.expectedFailures = {}
CurveAnimTagsValid.prereqTests = { ValidationEnums.ValidationModule.CurveAnimDataAvailable }

local MaxTimeStampCharacters = 30
local function isTimeStamp(tag: string): boolean
	if #tag > MaxTimeStampCharacters then
		return false
	end
	local isNumerical = string.match(tag, "^[0-9]+$") ~= nil
	return isNumerical
end

CurveAnimTagsValid.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	for _, inst in data.curveAnimations do
		for _, child in inst:GetChildren() do
			local objects = child:GetDescendants()
			table.insert(objects, child)

			local problematicPaths = {}
			for _, obj in objects do
				if #CollectionService:GetTags(obj) > 0 then
					table.insert(problematicPaths, obj:GetFullName())
				end
			end
			if #problematicPaths > 0 then
				reporter:fail(ErrorSourceStrings.Keys.InstanceTagsFound, {
					ProblematicDescendantPaths = table.concat(problematicPaths, ", "),
				})
				return
			end
		end

		local tags = CollectionService:GetTags(inst)
		local numTags = #tags
		if numTags > 0 then
			if numTags > 1 or not isTimeStamp(tags[1]) then
				reporter:fail(ErrorSourceStrings.Keys.CurveAnim_InvalidTags)
				return
			end
		end
	end
end

return CurveAnimTagsValid :: Types.ValidationModule
