local root = script.Parent.Parent.Parent
local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)
local readAQSummaryNumber = require(root.util.readAQSummaryNumber)

local getFFlagUGCValidateAQDynamicHeadMLHybrid = require(root.flags.getFFlagUGCValidateAQDynamicHeadMLHybrid)
local getFFlagUGCValidateAQDynamicHeadMLHybridShadow =
	require(root.flags.getFFlagUGCValidateAQDynamicHeadMLHybridShadow)
local getFFlagUGCValidateAQDynamicHeadMLHybridNewFacsMessages =
	require(root.flags.getFFlagUGCValidateAQDynamicHeadMLHybridNewFacsMessages)
local getFIntUGCValidationDynamicHeadMLEyesMinScorePerMillion =
	require(root.flags.getFIntUGCValidationDynamicHeadMLEyesMinScorePerMillion)
local getFIntUGCValidationDynamicHeadMLMouthMinScorePerMillion =
	require(root.flags.getFIntUGCValidationDynamicHeadMLMouthMinScorePerMillion)
local getFIntUGCValidationDynamicHeadMLAnimationMinScorePerMillion =
	require(root.flags.getFIntUGCValidationDynamicHeadMLAnimationMinScorePerMillion)
local getFIntUGCValidationDynamicHeadMinimumQualityPercent =
	require(root.flags.getFIntUGCValidationDynamicHeadMinimumQualityPercent)

--[[
	Thresholds the asset-quality Measure_Dynamic_Head_ML_Hybrid scores. AQS runs four stages in order and
	stops at the first failing one, writing every later stage as "not_run":
		step1  facial features exist (has_eyes / has_mouth model scores, 0-1)
		step2a cage landmarks project onto the mesh (left_eye / right_eye / mouth, "1" or "0")
		step2b FACS poses deform enough (same five metrics as Measure_Dynamic_Head)
		step3  the rendered face animates acceptably (animation model score, 0-1)
	This module applies the same order: it reports every failure within a stage, then stops.

	AQS routes on the same cutoffs as the FInts below, so these thresholds may only be made STRICTER
	than AQS's. A looser one would pass a stage AQS failed, and the next stage would be "not_run".
]]

local PER_MILLION = 1000000

local CHECK_NAME = "Measure_Dynamic_Head_ML_Hybrid"
local STAGE_COMPLETED = "completed"

local step2aRegionErrors: { [string]: string } = {
	step2a_left_eye_landmark_valid = ErrorSourceStrings.Keys.DynamicHeadCageMisalignedLeftEye,
	step2a_right_eye_landmark_valid = ErrorSourceStrings.Keys.DynamicHeadCageMisalignedRightEye,
	step2a_mouth_landmark_valid = ErrorSourceStrings.Keys.DynamicHeadCageMisalignedMouth,
}

-- Same metrics, keys, and threshold as Measure_Dynamic_Head.
local step2bLegacyMetricErrors: { [string]: string } = {
	step2b_deformation_left_eye_close = ErrorSourceStrings.Keys.DynamicHeadLeftEyeNotClose,
	step2b_deformation_right_eye_close = ErrorSourceStrings.Keys.DynamicHeadRightEyeNotClose,
	step2b_deformation_mouth_open = ErrorSourceStrings.Keys.DynamicHeadMouthNotOpen,
	step2b_deformation_happy = ErrorSourceStrings.Keys.DynamicHeadHappyNotShown,
	step2b_deformation_sad = ErrorSourceStrings.Keys.DynamicHeadSadNotShown,
}

-- Same checks with this validation's own wording; the legacy keys stay untouched for Measure_Dynamic_Head.
local step2bMetricErrors: { [string]: string } = {
	step2b_deformation_left_eye_close = ErrorSourceStrings.Keys.FacsDeformation_LeftEyeNotClose,
	step2b_deformation_right_eye_close = ErrorSourceStrings.Keys.FacsDeformation_RightEyeNotClose,
	step2b_deformation_mouth_open = ErrorSourceStrings.Keys.FacsDeformation_MouthNotOpen,
	step2b_deformation_happy = ErrorSourceStrings.Keys.FacsDeformation_HappyNotShown,
	step2b_deformation_sad = ErrorSourceStrings.Keys.FacsDeformation_SadNotShown,
}

local Measure_Dynamic_Head_ML_Hybrid = {}

Measure_Dynamic_Head_ML_Hybrid.categories = { ValidationEnums.UploadCategory.DYNAMIC_HEAD }
-- Both flags are set explicitly: a module without fflag defaults to enforced.
Measure_Dynamic_Head_ML_Hybrid.fflag = getFFlagUGCValidateAQDynamicHeadMLHybrid
Measure_Dynamic_Head_ML_Hybrid.shadowFlag = getFFlagUGCValidateAQDynamicHeadMLHybridShadow

-- AQS reports a head without cage or FACS data as one of these codes instead of scores; same keys as
-- Measure_Dynamic_Head, so creators see the same message whichever check runs.
Measure_Dynamic_Head_ML_Hybrid.knownAqsUserErrors = {
	MISSING_CAGE_INFO = ErrorSourceStrings.Keys.DynamicHeadMISSINGCAGE,
	NO_FACS = ErrorSourceStrings.Keys.DynamicHeadNOFACS,
}

local function requireStageCompleted(meshScores: { [string]: string }, stage: string)
	local status = meshScores[`{stage}_status`]
	if status ~= STAGE_COMPLETED then
		error(
			`Measure_Dynamic_Head_ML_Hybrid: {stage} is {tostring(status)}, expected completed. `
				.. "A threshold here may be looser than the asset-quality cutoff."
		)
	end
end

local function meetsPerMillionCutoff(score: number, minScorePerMillion: number): boolean
	return score >= minScorePerMillion / PER_MILLION
end

-- Each stage check returns true if the stage passed, after reporting every failure in it.
local function checkFacialFeatures(reporter: Types.ValidationReporter, meshScores: { [string]: string }): boolean
	requireStageCompleted(meshScores, "step1")
	local passed = true

	local eyesScore = readAQSummaryNumber(meshScores, "step1_has_eyes_score", CHECK_NAME, 0, 1)
	if not meetsPerMillionCutoff(eyesScore, getFIntUGCValidationDynamicHeadMLEyesMinScorePerMillion()) then
		reporter:fail(ErrorSourceStrings.Keys.FacialFeaturePresence_EyesMissing)
		passed = false
	end

	local mouthScore = readAQSummaryNumber(meshScores, "step1_has_mouth_score", CHECK_NAME, 0, 1)
	if not meetsPerMillionCutoff(mouthScore, getFIntUGCValidationDynamicHeadMLMouthMinScorePerMillion()) then
		reporter:fail(ErrorSourceStrings.Keys.FacialFeaturePresence_MouthMissing)
		passed = false
	end

	return passed
end

local function checkCageLandmarks(reporter: Types.ValidationReporter, meshScores: { [string]: string }): boolean
	requireStageCompleted(meshScores, "step2a")
	local passed = true

	for field, errorKey in step2aRegionErrors do
		local landmarkValid = meshScores[field]
		if landmarkValid == "0" then
			reporter:fail(errorKey)
			passed = false
		elseif landmarkValid ~= "1" then
			error(`Measure_Dynamic_Head_ML_Hybrid: {field} is not "1" or "0": {tostring(landmarkValid)}`)
		end
	end

	return passed
end

local function checkFacsDeformation(reporter: Types.ValidationReporter, meshScores: { [string]: string }): boolean
	requireStageCompleted(meshScores, "step2b")
	local passed = true

	-- Fails at or below the threshold, exactly like Measure_Dynamic_Head.
	local minDeformation = getFIntUGCValidationDynamicHeadMinimumQualityPercent() / 100
	local metricErrors: { [string]: string } = if getFFlagUGCValidateAQDynamicHeadMLHybridNewFacsMessages()
		then step2bMetricErrors
		else step2bLegacyMetricErrors
	for field, errorKey in metricErrors do
		if readAQSummaryNumber(meshScores, field, CHECK_NAME) <= minDeformation then
			reporter:fail(errorKey)
			passed = false
		end
	end

	return passed
end

local function checkAnimationQuality(reporter: Types.ValidationReporter, meshScores: { [string]: string }): boolean
	requireStageCompleted(meshScores, "step3")

	local animationScore = readAQSummaryNumber(meshScores, "step3_animation_pass_score", CHECK_NAME, 0, 1)
	if not meetsPerMillionCutoff(animationScore, getFIntUGCValidationDynamicHeadMLAnimationMinScorePerMillion()) then
		reporter:fail(ErrorSourceStrings.Keys.RenderedAnimation_RequiredExpressionsMissing)
		return false
	end

	return true
end

local stageChecks = {
	checkFacialFeatures,
	checkCageLandmarks,
	checkFacsDeformation,
	checkAnimationQuality,
}

Measure_Dynamic_Head_ML_Hybrid.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	local summary = data.aqsSummaryData.Measure_Dynamic_Head_ML_Hybrid
	if summary == nil then
		error("Measure_Dynamic_Head_ML_Hybrid: missing AQS summary data")
	end

	local meshCount = 0
	for meshName, meshScores in summary do
		if meshName == "measurement_score" then
			continue
		end
		meshCount += 1

		for _, checkStage in stageChecks do
			if not checkStage(reporter, meshScores :: any) then
				break
			end
		end
	end

	if meshCount == 0 then
		error("Measure_Dynamic_Head_ML_Hybrid: AQS summary has no head mesh")
	end
end

return Measure_Dynamic_Head_ML_Hybrid :: Types.ValidationModule
