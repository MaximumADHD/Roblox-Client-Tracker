local root = script.Parent.Parent.Parent

local PublishService = game:GetService("PublishService")

local Constants = require(root.Constants)
local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)

local getFFlagUGCValidateMigrateCurveAnim = require(root.flags.getFFlagUGCValidateMigrateCurveAnim)

game:DefineFastFlag("UGCValidateEmoteAttributes", false)

local EmoteAnimationAttributesAccurate = {}

local IsUGCEmoteAttribute = Constants.EmoteIsUGCAttributeName
local MaxPartTranslationAttribute = Constants.EmoteMaxPartTranslationAttributeName
local MaxFloatDifference = 1e-5

local function toFiniteNumber(value: any): number?
	if typeof(value) == "number" and value > -math.huge and value < math.huge then
		return value
	end
	return nil
end

EmoteAnimationAttributesAccurate.categories = { ValidationEnums.UploadCategory.EMOTE_ANIMATION }
EmoteAnimationAttributesAccurate.requiredData = {}
EmoteAnimationAttributesAccurate.conditionalData = {
	ValidationEnums.SharedDataMember.curveAnimations,
}
EmoteAnimationAttributesAccurate.fflag = function()
	return getFFlagUGCValidateMigrateCurveAnim()
		and game:GetFastFlag("UGCValidateEmoteAttributes")
		and game:GetEngineFeature("EngineTagEmoteMaxPartTranslation")
end
EmoteAnimationAttributesAccurate.expectedFailures = {}
EmoteAnimationAttributesAccurate.prereqTests = {}

EmoteAnimationAttributesAccurate.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	-- Emote uploads should resolve to exactly one CurveAnimation, so return after the first failure.
	for _, curveAnimation in data.curveAnimations do
		if curveAnimation:GetAttribute(IsUGCEmoteAttribute) ~= true then
			reporter:fail(ErrorSourceStrings.Keys.EmoteAnimation_InvalidUGCAttribute)
			return
		end

		local taggedTranslation = toFiniteNumber(curveAnimation:GetAttribute(MaxPartTranslationAttribute))
		if taggedTranslation == nil then
			reporter:fail(ErrorSourceStrings.Keys.EmoteAnimation_InvalidMaxPartTranslationAttribute)
			return
		end

		local clonedClip = curveAnimation:Clone()
		PublishService:TagEmoteAnimation(clonedClip)
		local calculatedTranslation = toFiniteNumber(clonedClip:GetAttribute(MaxPartTranslationAttribute))
		clonedClip:Destroy()

		if calculatedTranslation == nil then
			reporter:fail(ErrorSourceStrings.Keys.EmoteAnimation_MaxPartTranslationCalcFailed)
			return
		end

		if math.abs(taggedTranslation - calculatedTranslation) > MaxFloatDifference then
			reporter:fail(ErrorSourceStrings.Keys.EmoteAnimation_MaxPartTranslationMismatch, {
				taggedTranslation = tostring(taggedTranslation),
				calculatedTranslation = tostring(calculatedTranslation),
			})
			return
		end
	end
end

return EmoteAnimationAttributesAccurate
