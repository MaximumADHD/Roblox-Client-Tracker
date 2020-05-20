--[[
    DraggerTool specific derived state which is calculated from the state of
    the DataModel and cached for as long as it is valid.

    This includes:
        * Derived information about the selection, such as its bounding box
        * The scale that a set of handles placed around the selection should
          be drawn with.
]]

local Framework = script.Parent.Parent
local SelectionWrapper = require(Framework.Utility.SelectionWrapper)
local SelectionHelper = require(Framework.Utility.SelectionHelper)
local getHandleScale = require(Framework.Utility.getHandleScale)

local SCALE_CHANGE_EPSILON = 1e-6

local DerivedWorldState = {}
DerivedWorldState.__index = DerivedWorldState

function DerivedWorldState.new()
    return setmetatable({
        _scale = 1,
    }, DerivedWorldState)
end

function DerivedWorldState:updateSelectionInfo()
    local selectionInfo = SelectionHelper.computeSelectionInfo(SelectionWrapper:Get())
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
    self:_updateScale()
end

--[[
    Update the view (mouse position or camera position)
    Returns: Whether the scale changed as a result of camera changes
]]
function DerivedWorldState:updateView()
    return self:_updateScale()
end

function DerivedWorldState:_updateScale()
    local focusPoint = self._mainCFrame * self._boundingBoxOffset
	local scale = getHandleScale(focusPoint)
    if math.abs(scale - self._scale) > SCALE_CHANGE_EPSILON then
        self._scale = scale
        return true
    else
        return false
    end
end

function DerivedWorldState:getHandleScale()
    return self._scale
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

return DerivedWorldState
