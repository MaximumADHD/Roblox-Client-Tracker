--[[
	Computes animation frame data (CFrames, lengths, position magnitudes, tracks)
	from the already-fetched CurveAnimation list. Returns nil on failure so
	FetchAllDesiredData surfaces DATA_FETCH_FAILURE to downstream tests.
]]

local root = script.Parent.Parent.Parent

local Types = require(root.util.Types)
local CurveAnimationFrameCalculator = require(root.util.CurveAnimationFrameCalculator)

local FetchCurveAnimComputedFrames = {}

function FetchCurveAnimComputedFrames.getData(
	curveAnimations: Types.CurveAnimationsData
): Types.CurveAnimComputedFramesData?
	if #curveAnimations == 0 then
		return nil
	end

	local curveAnim = curveAnimations[1]
	local success, animFrames, animLength, positionMagnitudeFrames, tracks = pcall(function()
		return CurveAnimationFrameCalculator.calculateAnimFramesAtOrigin(curveAnim)
	end)

	if not success then
		return nil
	end

	return {
		animFrames = animFrames,
		animLength = animLength,
		positionMagnitudeFrames = positionMagnitudeFrames,
		tracks = tracks,
	}
end

return FetchCurveAnimComputedFrames
