--[[
	viewportCamera - pure camera-framing math for the material preview, extracted
	so it is unit-testable without a live ViewportFrame. Mirrors the essentials of
	DeveloperFramework's AssetRenderModel (DevFramework-free): center the part at
	the origin, then place the camera back along the focus direction at a distance
	proportional to the part's extents.

	CubeCornerOn narrows the field of view (so the corner facing the camera isn't
	stretched by perspective) and scales the distance to keep the part roughly the
	same on-screen size as the default FOV would give.
]]
local Enums = require(script.Parent.Parent.Enums)
local Types = require(script.Parent.Parent.Types)

local MaterialPreviewGeometryType = Enums.MaterialPreviewGeometryType

type MaterialPreviewGeometryType = Types.MaterialPreviewGeometryType

local DEFAULT_FIELD_OF_VIEW = 70
local CUBE_CORNER_ON_FIELD_OF_VIEW = 40
-- Pulling back by the ratio of the FOV half-angle tangents keeps the part's
-- on-screen size roughly constant when the FOV narrows for CubeCornerOn. Both FOVs
-- are constant, so precompute it.
local CUBE_CORNER_ON_DISTANCE_MULTIPLIER = math.tan(math.rad(DEFAULT_FIELD_OF_VIEW / 2))
	/ math.tan(math.rad(CUBE_CORNER_ON_FIELD_OF_VIEW / 2))
-- Matches AssetRenderModel's INSERT_CAMERA_DIST_MULT: pull the camera in slightly
-- so the part fills the frame.
local DISTANCE_MULTIPLIER = 0.8
-- The part is centered at the origin; the camera looks at it head-on from -Z.
local FOCUS_POSITION = Vector3.zero
local FOCUS_DIRECTION = Vector3.new(0, 0, -1)

local function fieldOfViewFor(geometryType: MaterialPreviewGeometryType?): number
	if geometryType == MaterialPreviewGeometryType.CubeCornerOn then
		return CUBE_CORNER_ON_FIELD_OF_VIEW
	end
	return DEFAULT_FIELD_OF_VIEW
end

local function distanceMultiplierFor(geometryType: MaterialPreviewGeometryType?): number
	if geometryType == MaterialPreviewGeometryType.CubeCornerOn then
		return CUBE_CORNER_ON_DISTANCE_MULTIPLIER
	end
	return 1
end

export type CameraFraming = {
	cframe: CFrame,
	fieldOfView: number,
}

-- extentsSize: the part's bounding size. initialDistance: optional override for
-- the base camera distance (defaults to the extents magnitude).
local function frameCamera(
	extentsSize: Vector3,
	geometryType: MaterialPreviewGeometryType?,
	initialDistance: number?
): CameraFraming
	local baseDistance = initialDistance or extentsSize.Magnitude
	local distance = baseDistance * distanceMultiplierFor(geometryType) * DISTANCE_MULTIPLIER
	local cframe = CFrame.new(FOCUS_POSITION + distance * FOCUS_DIRECTION.Unit, FOCUS_POSITION)

	return {
		cframe = cframe,
		fieldOfView = fieldOfViewFor(geometryType),
	}
end

return {
	frameCamera = frameCamera,
	DEFAULT_FIELD_OF_VIEW = DEFAULT_FIELD_OF_VIEW,
	CUBE_CORNER_ON_FIELD_OF_VIEW = CUBE_CORNER_ON_FIELD_OF_VIEW,
}
