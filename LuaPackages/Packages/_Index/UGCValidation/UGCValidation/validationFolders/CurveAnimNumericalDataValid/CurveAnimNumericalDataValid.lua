local root = script.Parent.Parent.Parent

local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)

local getFFlagUGCValidateMigrateCurveAnim = require(root.flags.getFFlagUGCValidateMigrateCurveAnim)
local GetFStringUGCValidationMaxAnimationLength = require(root.flags.GetFStringUGCValidationMaxAnimationLength)
local GetFStringUGCValidateFrameDeltaKeyTimeTol = require(root.flags.GetFStringUGCValidateFrameDeltaKeyTimeTol)
local getFIntUGCValidateMaxAnimationFPS = require(root.flags.getFIntUGCValidateMaxAnimationFPS)
local getFIntUGCValidateMaxMarkerCurveValueLength = require(root.flags.getFIntUGCValidateMaxMarkerCurveValueLength)
local getFFlagUGCValidateRestrictNumMarkersInsideMarkerCurves =
	require(root.flags.getFFlagUGCValidateRestrictNumMarkersInsideMarkerCurves)
local getFIntUGCValidateMaxTotalInternalMarkers = require(root.flags.getFIntUGCValidateMaxTotalInternalMarkers)
local getFFlagUGCValidationAnimationPackSupport = require(root.flags.getFFlagUGCValidationAnimationPackSupport)

local CurveAnimNumericalDataValid = {}

CurveAnimNumericalDataValid.categories = { ValidationEnums.UploadCategory.EMOTE_ANIMATION }
if getFFlagUGCValidationAnimationPackSupport() then
	table.insert(CurveAnimNumericalDataValid.categories, ValidationEnums.UploadCategory.ANIMATION)
end
CurveAnimNumericalDataValid.requiredData = {
	ValidationEnums.SharedDataMember.curveAnimations,
}
CurveAnimNumericalDataValid.fflag = getFFlagUGCValidateMigrateCurveAnim
CurveAnimNumericalDataValid.expectedFailures = {}
CurveAnimNumericalDataValid.prereqTests = { ValidationEnums.ValidationModule.CurveAnimDataAvailable }

local function areNumbersGood(...): boolean
	local function isNaN(value: number): boolean
		return value ~= value
	end

	local function isInfinite(value: number): boolean
		return value == math.huge or value == -math.huge
	end

	for _, value in { ... } do
		if isNaN(value) then
			return false
		end
		if isInfinite(value) then
			return false
		end
	end
	return true
end

CurveAnimNumericalDataValid.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	local frameDelta = 1.0 / getFIntUGCValidateMaxAnimationFPS()
	local frameDeltaTol = frameDelta * GetFStringUGCValidateFrameDeltaKeyTimeTol.asNumber()
	local fpsWithTol = 1.0 / frameDeltaTol
	local maxTotalKeys = math.ceil(fpsWithTol * GetFStringUGCValidationMaxAnimationLength.asNumber())

	for _, inst in data.curveAnimations do
		for _, desc: any in inst:GetDescendants() do
			if desc:IsA("MarkerCurve") then
				local allMarkers = desc:GetMarkers()
				if getFFlagUGCValidateRestrictNumMarkersInsideMarkerCurves() then
					local maxInternalMarkers = math.min(getFIntUGCValidateMaxTotalInternalMarkers(), maxTotalKeys)
					if #allMarkers > maxInternalMarkers then
						reporter:fail(ErrorSourceStrings.Keys.CurveAnim_TooManyMarkers, {
							count = tostring(#allMarkers),
							maxAllowed = tostring(maxInternalMarkers),
						})
						return
					end
				else
					if #allMarkers > maxTotalKeys then
						reporter:fail(ErrorSourceStrings.Keys.CurveAnim_TooManyMarkers, {
							count = tostring(#allMarkers),
							maxAllowed = tostring(maxTotalKeys),
						})
						return
					end
				end

				for _, marker in allMarkers do
					if
						not marker.Time
						or (not areNumbersGood(marker.Time))
						or not marker.Value
						or #marker.Value > getFIntUGCValidateMaxMarkerCurveValueLength()
					then
						reporter:fail(ErrorSourceStrings.Keys.CurveAnim_InvalidMarkerData)
						return
					end
				end
				continue
			end

			if not desc:IsA("FloatCurve") then
				continue
			end

			local allKeys = desc:GetKeys()
			if #allKeys > maxTotalKeys then
				reporter:fail(ErrorSourceStrings.Keys.CurveAnim_TooManyKeys, {
					maxAllowed = tostring(maxTotalKeys),
				})
				return
			end

			local prevTime = nil
			for _, key in allKeys do
				if
					not key.Time
					or (not areNumbersGood(key.Time))
					or not key.Value
					or (not areNumbersGood(key.Value))
				then
					reporter:fail(ErrorSourceStrings.Keys.CurveAnim_InvalidCurveData)
					return
				end

				if prevTime then
					local minTimeAllowed = (prevTime :: number) + frameDeltaTol
					if key.Time < minTimeAllowed then
						local grandparentName = if desc.Parent.Parent then desc.Parent.Parent.Name else "-"
						reporter:fail(ErrorSourceStrings.Keys.CurveAnim_KeysTooClose, {
							curvePath = `{grandparentName}.{desc.Parent.Name}.{desc.Name}`,
							maxFPS = tostring(getFIntUGCValidateMaxAnimationFPS()),
						})
						return
					end
				elseif key.Time < 0 then
					local grandparentName = if desc.Parent.Parent then desc.Parent.Parent.Name else "-"
					reporter:fail(ErrorSourceStrings.Keys.CurveAnim_NegativeKeyTime, {
						curvePath = `{grandparentName}.{desc.Parent.Name}.{desc.Name}`,
					})
					return
				end
				prevTime = key.Time
			end
		end
	end
end

return CurveAnimNumericalDataValid :: Types.ValidationModule
