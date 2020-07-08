local DraggerFramework = script.Parent.Parent.Parent
local DraggerStateType = require(DraggerFramework.Implementation.DraggerStateType)
local SelectionHelper = require(DraggerFramework.Utility.SelectionHelper)
local StandardCursor = require(DraggerFramework.Utility.StandardCursor)

local NO_COLLISIONS_TRANSPARENCY = 0.4

local DraggingHandle = {}
DraggingHandle.__index = DraggingHandle

function DraggingHandle.new(draggerToolModel, makeDraggedPartsTransparent, draggingHandleId)
	local self = setmetatable({
		_draggerToolModel = draggerToolModel,
	}, DraggingHandle)
	self:_init(makeDraggedPartsTransparent, draggingHandleId)
	return self
end

function DraggingHandle:enter()
end

function DraggingHandle:leave()
end

function DraggingHandle:_init(makeDraggedPartsTransparent, draggingHandleId)
	assert(draggingHandleId, "Missing draggingHandleId")

	self._draggerToolModel._sessionAnalytics.handleDrags = self._draggerToolModel._sessionAnalytics.handleDrags + 1
	self._draggerToolModel._boundsChangedTracker:uninstall()
	self._draggerToolModel._toolImplementation:mouseDown(
		self._draggerToolModel._draggerContext:getMouseRay(), draggingHandleId)
	self._draggingHandleId = draggingHandleId

	self._draggingModifiedParts = {}
	self._makeDraggedPartsTransparent = makeDraggedPartsTransparent
	if makeDraggedPartsTransparent then
		for _, part in ipairs(self._draggerToolModel._derivedWorldState:getObjectsToTransform()) do
			if part:IsA("BasePart") then
				part.LocalTransparencyModifier = NO_COLLISIONS_TRANSPARENCY
				table.insert(self._draggingModifiedParts, part)
			end
		end
	end
end

function DraggingHandle:render()
	self._draggerToolModel:setMouseCursor(StandardCursor.getClosedHand())

	local toolImplementation = self._draggerToolModel._toolImplementation
	if toolImplementation and toolImplementation.render then
		return toolImplementation:render(self._draggingHandleId)
	end
end

function DraggingHandle:processSelectionChanged()
	-- Re-init the drag if the selection changes.
	self:_endHandleDrag()
	self:_init(self._makeDraggedPartsTransparent, self._draggingHandleId)
end

function DraggingHandle:processMouseDown()
	error("Mouse should already be down while dragging handle.")
end

function DraggingHandle:processViewChanged()
	self._draggerToolModel._toolImplementation:mouseDrag(
		self._draggerToolModel._draggerContext:getMouseRay())
end

function DraggingHandle:processMouseUp()
	self:_endHandleDrag()
	self._draggerToolModel:transitionToState(DraggerStateType.Ready)
end

function DraggingHandle:processKeyDown(keyCode)
	-- Nothing to do
end

function DraggingHandle:_endHandleDrag()
	-- Commit the results of using the tool
	self._draggerToolModel._toolImplementation:mouseUp(
		self._draggerToolModel._draggerContext:getMouseRay())
	self._draggerToolModel:_updateSelectionInfo() -- Since the selection has been edited by Implementation

	for _, part in ipairs(self._draggingModifiedParts) do
		part.LocalTransparencyModifier = 0
	end

	self._draggerToolModel._boundsChangedTracker:install()

	local cframe, offset = self._draggerToolModel._derivedWorldState:getBoundingBox()
	self._draggerToolModel._draggerContext:setInsertPoint(cframe * offset)

	self._draggerToolModel:_analyticsSendHandleDragged()
end

return DraggingHandle