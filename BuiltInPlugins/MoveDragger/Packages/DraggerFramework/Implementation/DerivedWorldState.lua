--[[
	DraggerTool specific derived state which is calculated from the state of
	the DataModel and cached for as long as it is valid.

	This includes:
		* Derived information about the selection, such as its bounding box
		* The scale that a set of handles placed around the selection should
		  be drawn with.
]]

local DraggerFramework = script.Parent.Parent
local SelectionHelper = require(DraggerFramework.Utility.SelectionHelper)

local getFFlagScaleDraggerPartBias = require(DraggerFramework.Flags.getFFlagScaleDraggerPartBias)

local DerivedWorldState = {}
DerivedWorldState.__index = DerivedWorldState

function DerivedWorldState.new()
	return setmetatable({}, DerivedWorldState)
end

function DerivedWorldState:updateSelectionInfo(selection, isSimulating, useLocalSpace)
	local selectionInfo = SelectionHelper.computeSelectionInfo(selection, isSimulating, useLocalSpace)
	self._boundingBoxOffset = selectionInfo.boundingBoxOffset
	self._boundingBoxSize = selectionInfo.boundingBoxSize
	self._localBoundingBoxOffset = selectionInfo.localBoundingBoxOffset
	self._localBoundingBoxSize = selectionInfo.localBoundingBoxSize
	self._partsToMove = selectionInfo.parts
	self._attachmentsToMove = selectionInfo.attachments
	self._allSelectedAttachments = selectionInfo.allAttachments
	self._mainCFrame = selectionInfo.basisCFrame
	self._localMainCFrame = selectionInfo.localBasisCFrame
	self._originalCFrameMap = selectionInfo.originalCFrameMap
	self._selectionHasPhysics = selectionInfo.hasPhysics
	self._instancesWithConfigurableFace = selectionInfo.instancesWithConfigurableFace
	if getFFlagScaleDraggerPartBias() then
		self._partSet = selectionInfo.partSet
	end
end

--[[
	Returns: basisCFrame, offset, size
	If forceLocal is true, return the local bounding box regardless of whether
	the chosen coordinate space is.
]]
function DerivedWorldState:getBoundingBox(forceLocal)
	if forceLocal then
		return self._localMainCFrame,
			self._localBoundingBoxOffset,
			self._localBoundingBoxSize
	else
		return self._mainCFrame,
			self._boundingBoxOffset,
			self._boundingBoxSize
	end
end

--[[
	Returns: partsToTransform, attachmentsToTransform
]]
function DerivedWorldState:getObjectsToTransform()
	return self._partsToMove, self._attachmentsToMove
end

function DerivedWorldState:getAllSelectedAttachments()
	return self._allSelectedAttachments
end

--[[
	Returns: A map of where selected parts originally were before we started
	moving them.
]]
function DerivedWorldState:getOriginalCFrameMap()
	return self._originalCFrameMap
end

--[[
	Returns: Whether any parts in the selection currently have physics
	simulation being applied to them.
]]
function DerivedWorldState:doesSelectionHavePhysics()
	return self._selectionHasPhysics
end

--[[
	Returns: Whether the given part is part of the selection
]]
function DerivedWorldState:isPartInSelection(part)
	return self._partSet[part] ~= nil
end

return DerivedWorldState
