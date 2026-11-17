-- TEMPORARY: Uses getAttachmentCFrameInPartSpace to fix HRD bone-nested attachment CFrame interpretation.
-- All bounds/transform calculation in this file must be refactored in the new validation system.

--[[
validateBodyPartChildAttachmentBounds.lua performs calculations in the space of the MeshPart mesh. This file gives functions to go to and from mesh space

clampAttachmentToBounds
    returns a CFrame for the attachment that is in bounds
]]

local root = script.Parent.Parent

local BoundsDataUtils = require(root.util.BoundsDataUtils)
local getAttachmentCFrameInPartSpace = require(root.util.getAttachmentCFrameInPartSpace)

local MeshSpaceUtils = {}

local function toWorldSpace(posMeshSpace: Vector3, meshDimensions: Vector3)
	local meshHalfSize = meshDimensions / 2
	return posMeshSpace * meshHalfSize
end

-- return 'to' in the local space of 'from'
local function calculateLocalSpaceTransform(from: CFrame, to: CFrame): CFrame
	local toInLocalRotationSpaceOfFrom = from.Rotation:Inverse() * to.Rotation
	local toInLocalPositionSpaceOfFrom = from.Rotation:Inverse() * (to.Position - from.Position)

	return CFrame.new(toInLocalPositionSpaceOfFrom) * toInLocalRotationSpaceOfFrom
end

-- the result is the attachment's CFrame
function MeshSpaceUtils.clampAttachmentToBounds(
	att: Attachment,
	transformData: any,
	attBoundsMeshSpace: any,
	clampTol: number?
): CFrame
	clampTol = if clampTol then clampTol else 0.001

	local attachWorldCFrame = transformData.cframe * getAttachmentCFrameInPartSpace(att)

	local meshCenterPos = BoundsDataUtils.calculateBoundsCenters(transformData.boundsData)
	local meshDimensions = BoundsDataUtils.calculateBoundsDimensions(transformData.boundsData)
	assert(meshCenterPos, "meshCenterPos is nil")
	assert(meshDimensions, "meshDimensions is nil")

	local attachLocalToMeshBoundsPos = attachWorldCFrame.Position - (meshCenterPos :: Vector3)
	local minLocalToMeshBounds = toWorldSpace(attBoundsMeshSpace.min, meshDimensions :: Vector3)
	local maxLocalToMeshBounds = toWorldSpace(attBoundsMeshSpace.max, meshDimensions :: Vector3)

	-- this section makes sure that the clamp tolerances do not take the clamped position outside the bounds
	-- (which could happen if the tolerances are greater than the bounds sizes)
	local clamps = {}
	for _, dimension in { "X", "Y", "Z" } do
		clamps[dimension] = {}
		clamps[dimension].min, clamps[dimension].max =
			(minLocalToMeshBounds :: any)[dimension] + clampTol, (maxLocalToMeshBounds :: any)[dimension] - clampTol
		if clamps[dimension].min > clamps[dimension].max then
			local midPoint = ((minLocalToMeshBounds :: any)[dimension] + (maxLocalToMeshBounds :: any)[dimension]) * 0.5
			clamps[dimension].min, clamps[dimension].max = midPoint, midPoint
		end
	end

	local attachLocalToMeshBoundsClampedPos = Vector3.new(
		math.clamp(attachLocalToMeshBoundsPos.X, clamps.X.min, clamps.X.max),
		math.clamp(attachLocalToMeshBoundsPos.Y, clamps.Y.min, clamps.Y.max),
		math.clamp(attachLocalToMeshBoundsPos.Z, clamps.Z.min, clamps.Z.max)
	)

	local attachWorldClampedPos = (meshCenterPos :: Vector3) + attachLocalToMeshBoundsClampedPos
	local attachWorldClampedCFrame = attachWorldCFrame.Rotation + attachWorldClampedPos

	return calculateLocalSpaceTransform(transformData.cframe, attachWorldClampedCFrame)
end

return MeshSpaceUtils
