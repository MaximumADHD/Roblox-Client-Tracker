--!strict
--[[
combineBounds:
	takes in two Types.BoundsData and combines them into one Types.BoundsData
expandMeshBounds:
	takes in a Types.BoundsData and a Vector3 and expands the minMeshCorner and maxMeshCorner to include the Vector3
expandRigAttachmentBounds:
	takes in a Types.BoundsData and a Vector3 and expands the minRigAttachment and maxRigAttachment to include the Vector3
setOverallBounds:
	takes in a Types.BoundsData and sets the minOverall and maxOverall to the min and max of the minMeshCorner, maxMeshCorner, minRigAttachment, and maxRigAttachment
calculateBoundsCenters:
	takes in a Types.BoundsData and returns the center of the mesh bounds, rig attachment bounds, and overall bounds
calculateBoundsDimensions:
	takes in a Types.BoundsData and returns the dimensions of the mesh bounds, rig attachment bounds, and overall bounds
]]

local root = script.Parent.Parent
local Types = require(root.util.Types)

local calculateMinMax = require(root.util.calculateMinMax)

local BoundsDataUtils = {}

function BoundsDataUtils.combineBounds(from: Types.BoundsData, to: Types.BoundsData): Types.BoundsData
	local result: Types.BoundsData = {}

	result.minMeshCorner, result.maxMeshCorner =
		calculateMinMax(from.minMeshCorner, from.maxMeshCorner, to.minMeshCorner, to.maxMeshCorner)

	result.minRigAttachment, result.maxRigAttachment =
		calculateMinMax(from.minRigAttachment, from.maxRigAttachment, to.minRigAttachment, to.maxRigAttachment)

	BoundsDataUtils.setOverallBounds(result)
	return result
end

function BoundsDataUtils.expandMeshBounds(bounds: Types.BoundsData, point: Vector3)
	bounds.minMeshCorner, bounds.maxMeshCorner =
		calculateMinMax(bounds.minMeshCorner, bounds.maxMeshCorner, point, point)
end

function BoundsDataUtils.expandRigAttachmentBounds(bounds: Types.BoundsData, point: Vector3)
	bounds.minRigAttachment, bounds.maxRigAttachment =
		calculateMinMax(bounds.minRigAttachment, bounds.maxRigAttachment, point, point)
end

function BoundsDataUtils.setOverallBounds(bounds: Types.BoundsData)
	bounds.minOverall, bounds.maxOverall =
		calculateMinMax(bounds.minMeshCorner, bounds.maxMeshCorner, bounds.minRigAttachment, bounds.maxRigAttachment)
end

-- returns back mesh bounds center, rig attachment bounds center, overall bounds center
function BoundsDataUtils.calculateBoundsCenters(bounds: Types.BoundsData): (Vector3?, Vector3?, Vector3?)
	local meshCenter = if bounds.minMeshCorner and bounds.maxMeshCorner
		then (bounds.minMeshCorner + bounds.maxMeshCorner) / 2
		else nil
	local rigAttachmentCenter = if bounds.minRigAttachment and bounds.maxRigAttachment
		then (bounds.minRigAttachment + bounds.maxRigAttachment) / 2
		else nil
	local overallCenter = if bounds.minOverall and bounds.maxOverall
		then (bounds.minOverall + bounds.maxOverall) / 2
		else nil
	return meshCenter, rigAttachmentCenter, overallCenter
end

-- returns back mesh bounds dimensions, rig attachment bounds dimensions, overall bounds dimensions
function BoundsDataUtils.calculateBoundsDimensions(bounds: Types.BoundsData): (Vector3?, Vector3?, Vector3?)
	local meshBounds = if bounds.minMeshCorner and bounds.maxMeshCorner
		then bounds.maxMeshCorner - bounds.minMeshCorner
		else nil
	local rigAttachmentBounds = if bounds.minRigAttachment and bounds.maxRigAttachment
		then bounds.maxRigAttachment - bounds.minRigAttachment
		else nil
	local overallBounds = if bounds.minOverall and bounds.maxOverall then bounds.maxOverall - bounds.minOverall else nil
	return meshBounds, rigAttachmentBounds, overallBounds
end

return BoundsDataUtils
