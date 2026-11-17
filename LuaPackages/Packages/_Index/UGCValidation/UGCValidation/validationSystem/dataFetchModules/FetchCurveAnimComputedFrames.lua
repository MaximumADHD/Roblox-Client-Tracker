--[[
	Computes animation frame data (CFrames, lengths, position magnitudes, tracks)
	from the already-fetched CurveAnimation list. Returns nil on failure so
	FetchAllDesiredData surfaces DATA_FETCH_FAILURE to downstream tests.
]]

local root = script.Parent.Parent.Parent

local Types = require(root.util.Types)
local CurveAnimationFrameCalculator = require(root.util.CurveAnimationFrameCalculator)
local getFFlagUGCValidateRunValidationsOnSecondaryCurveAnimations =
	require(root.flags.getFFlagUGCValidateRunValidationsOnSecondaryCurveAnimations)

local FetchCurveAnimComputedFrames = {}

function FetchCurveAnimComputedFrames.getData(
	curveAnimations: Types.CurveAnimationsData,
	sourceAnimations: { Animation }?
): Types.CurveAnimComputedFramesData?
	if #curveAnimations == 0 then
		return nil
	end

	local computedFrames: Types.CurveAnimComputedFramesData = {}
	local runOnSecondaryClips = getFFlagUGCValidateRunValidationsOnSecondaryCurveAnimations()
	local clipCount = if runOnSecondaryClips then #curveAnimations else 1
	for index = 1, clipCount do
		local curveAnimation = curveAnimations[index]
		local success, animFrames, animLength, positionMagnitudeFrames, tracks = pcall(function()
			return CurveAnimationFrameCalculator.calculateAnimFramesAtOrigin(curveAnimation)
		end)

		if not success then
			return nil
		end

		table.insert(computedFrames, {
			animation = if runOnSecondaryClips and sourceAnimations then sourceAnimations[index] else nil,
			animFrames = animFrames,
			animLength = animLength,
			positionMagnitudeFrames = positionMagnitudeFrames,
			tracks = tracks,
		})
	end

	return computedFrames
end

return FetchCurveAnimComputedFrames
