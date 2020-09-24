local DraggerFramework = script.Parent.Parent.Parent
local DraggerStateType = require(DraggerFramework.Implementation.DraggerStateType)
local StandardCursor = require(DraggerFramework.Utility.StandardCursor)

local getFFlagDraggerSplit = require(DraggerFramework.Flags.getFFlagDraggerSplit)
local getFFlagRevertCtrlScale = require(DraggerFramework.Flags.getFFlagRevertCtrlScale)

-- Remove with getFFlagDraggerSplit
local NO_COLLISIONS_TRANSPARENCY = 0.4

local DraggingHandle = {}
DraggingHandle.__index = DraggingHandle

if getFFlagDraggerSplit() then
	function DraggingHandle.new(draggerToolModel, draggingHandles, draggingHandleId)
		local self = setmetatable({
			_draggerToolModel = draggerToolModel,
		}, DraggingHandle)
		self:_init(draggingHandles, draggingHandleId)
		return self
	end
else
	function DraggingHandle.new(draggerToolModel, makeDraggedPartsTransparent, draggingHandleId)
		local self = setmetatable({
			_draggerToolModel = draggerToolModel,
		}, DraggingHandle)
		self:_init(makeDraggedPartsTransparent, draggingHandleId)
		return self
	end
end

function DraggingHandle:enter()
end

function DraggingHandle:leave()
end

if getFFlagDraggerSplit() then
	function DraggingHandle:_init(draggingHandles, draggingHandleId)
		assert(draggingHandleId, "Missing draggingHandleId")

		self._draggerToolModel._sessionAnalytics.handleDrags = self._draggerToolModel._sessionAnalytics.handleDrags + 1
		self._draggerToolModel._boundsChangedTracker:uninstall()
		draggingHandles:mouseDown(self._draggerToolModel._draggerContext:getMouseRay(), draggingHandleId)
		self._draggingHandleId = draggingHandleId
		self._draggingHandles = draggingHandles
	end
else
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
end

function DraggingHandle:render()
	self._draggerToolModel:setMouseCursor(StandardCursor.getClosedHand())

	if getFFlagDraggerSplit() then
		return self._draggingHandles:render(self._draggingHandleId)
	else
		local toolImplementation = self._draggerToolModel._toolImplementation
		if toolImplementation and toolImplementation.render then
			return toolImplementation:render(self._draggingHandleId)
		end
	end
end

function DraggingHandle:processSelectionChanged()
	-- Re-init the drag if the selection changes.
	self:_endHandleDrag()
	if getFFlagDraggerSplit() then
		self:_init(self._draggingHandles, self._draggingHandleId)
	else
		self:_init(self._makeDraggedPartsTransparent, self._draggingHandleId)
	end
end

function DraggingHandle:processMouseDown()
	error("Mouse should already be down while dragging handle.")
end

function DraggingHandle:processViewChanged()
	if getFFlagDraggerSplit() then
		self._draggingHandles:mouseDrag(
			self._draggerToolModel._draggerContext:getMouseRay())
	else
		self._draggerToolModel._toolImplementation:mouseDrag(
			self._draggerToolModel._draggerContext:getMouseRay())
	end
end

function DraggingHandle:processMouseUp()
	self:_endHandleDrag()
	self._draggerToolModel:transitionToState(DraggerStateType.Ready)
end

function DraggingHandle:processKeyDown(keyCode)
	if getFFlagRevertCtrlScale() and getFFlagDraggerSplit() then
		if self._draggingHandles.keyDown then
			if self._draggingHandles:keyDown(keyCode) then
				-- Update the drag
				self:processViewChanged()
			end
		end
	end
end

function DraggingHandle:processKeyUp(keyCode)
	assert(getFFlagRevertCtrlScale() and getFFlagDraggerSplit())
	if self._draggingHandles.keyUp then
		if self._draggingHandles:keyUp(keyCode) then
			-- Update the drag
			self:processViewChanged()
		end
	end
end

function DraggingHandle:_endHandleDrag()
	-- Commit the results of using the tool
	if getFFlagDraggerSplit() then
		self._draggingHandles:mouseUp(
			self._draggerToolModel._draggerContext:getMouseRay())
	else
		self._draggerToolModel._toolImplementation:mouseUp(
			self._draggerToolModel._draggerContext:getMouseRay())
	end
	self._draggerToolModel:_updateSelectionInfo() -- Since the selection has been edited by Implementation

	if not getFFlagDraggerSplit() then
		-- Has moved into the schema specifc code
		for _, part in ipairs(self._draggingModifiedParts) do
			part.LocalTransparencyModifier = 0
		end
	end

	self._draggerToolModel._boundsChangedTracker:install()

	if getFFlagDraggerSplit() then
		self._draggerToolModel:getSchema().setActivePoint(
			self._draggerToolModel._draggerContext,
			self._draggerToolModel._selectionInfo)
	else
		local cframe, offset = self._draggerToolModel._derivedWorldState:getBoundingBox()
		self._draggerToolModel._draggerContext:setInsertPoint(cframe * offset)
	end

	self._draggerToolModel:_analyticsSendHandleDragged()
end

return DraggingHandle