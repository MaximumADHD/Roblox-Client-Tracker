local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local FreeformDragger = require(script.Parent.FreeformDragger)

local PivotRing = require(Plugin.Src.Components.PivotRing)

local ALWAYS_ON_TOP = true

local PivotHandle = {}
PivotHandle.__index = PivotHandle

function PivotHandle.new(draggerContext)
	return setmetatable({
		_dragging = false,
		_draggerContext = draggerContext,
	}, PivotHandle)
end

function PivotHandle:update(draggerToolModel, selectionInfo)
	if not self._dragging then
		self._originalPivot = selectionInfo:getBoundingBox()
		self._pivotOwner = selectionInfo:getPrimaryObject()
		self._draggerToolModel = draggerToolModel
		self._schema = draggerToolModel:getSchema()
	end
end

function PivotHandle:shouldBiasTowardsObjects()
	return false
end

function PivotHandle:hitTest(mouseRay, ignoreExtraThreshold)
	local screenPoint, onScreen = self._draggerContext:worldToViewportPoint(self._originalPivot.Position)
	if onScreen then
		local mouseLocation = self._draggerContext:getMouseLocation()
		local screenLocation = Vector2.new(screenPoint.X, screenPoint.Y)
		local distanceFromCursor = (screenLocation - mouseLocation).Magnitude
		if distanceFromCursor < PivotRing.HitTestRadius then
			return "Pivot", 0, ALWAYS_ON_TOP
		end
	end
	return nil
end

function PivotHandle:_selectedIsActive()
	if self._draggerContext:shouldShowActiveInstanceHighlight() then
		local activeInstance = self._draggerToolModel:getSelectionWrapper():getActiveSelectable()
		return self._pivotOwner == activeInstance
	else
		return false
	end
end

function PivotHandle:_renderPivotAdorn(hovered: boolean)
	if not self._pivotOwner then
		return
	end

	return Roact.createElement(PivotRing, {
		DraggerContext = self._draggerContext,
		Hovered = hovered,
		Pivot = self._originalPivot,
		IsActive = self:_selectedIsActive(),
	})
end

function PivotHandle:render(hoveredHandleId)
	local children = {}
	if self._freeformDrag then
		children.DragUI = self._freeformDrag:render()
	elseif hoveredHandleId then
		children.PivotAdorn = self:_renderPivotAdorn(true)
	else
		children.PivotAdorn = self:_renderPivotAdorn(false)
	end
	return Roact.createFragment(children)
end

function PivotHandle:mouseDown(mouseRay, handleId)
	-- Note: We may not have a _pivotOwner in the case where the owner was
	-- deleted in the middle of a drag of the PivotHandle.
	if self._pivotOwner then
		local dragInfo = {
			ClickedSelectable = self._pivotOwner,
			HandleId = "Pivot",
		}
		self._freeformDrag = FreeformDragger.new(self._draggerContext, self._draggerToolModel, dragInfo)
		self._freeformDrag:update()
	end
end

local function isAlt(keyCode)
	return keyCode == Enum.KeyCode.LeftAlt or keyCode == Enum.KeyCode.RightAlt
end

function PivotHandle:keyDown(keyCode)
	if self._freeformDrag then
		if keyCode == Enum.KeyCode.R then
			self._freeformDrag:rotate(Vector3.new(0, 1, 0))
			return true
		elseif keyCode == Enum.KeyCode.T then
			self._freeformDrag:rotate(Vector3.new(1, 0, 0))
			return true
		elseif isAlt(keyCode) then
			self._freeformDrag:update()
			return true
		end
	end
	return false
end

function PivotHandle:keyUp(keyCode)
	if self._freeformDrag then
		self._freeformDrag:update()
		return true
	end
	return false
end

function PivotHandle:mouseDrag(mouseRay)
	if self._freeformDrag then
		self._freeformDrag:update()
	end
end

function PivotHandle:mouseUp(mouseRay)
	if self._freeformDrag then
		self._freeformDrag:destroy()
		self._freeformDrag = nil
		self._schema.addUndoWaypoint(self._draggerContext, "Modify Pivot")
	end
end

return PivotHandle
