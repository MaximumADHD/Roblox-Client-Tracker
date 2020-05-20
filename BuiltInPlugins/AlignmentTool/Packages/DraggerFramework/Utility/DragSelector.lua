local StudioService = game:GetService("StudioService")
local Workspace = game:GetService("Workspace")

local SelectionHelper = require(script.Parent.SelectionHelper)
local SelectionWrapper = require(script.Parent.SelectionWrapper)

-- Minimum distance (pixels) required for a drag to select parts.
local DRAG_SELECTION_THRESHOLD = 3

local function areConstraintDetailsShown()
	return StudioService.ShowConstraintDetails
end

local DragSelector = {}
DragSelector.__index = DragSelector

function DragSelector.new()
    local self = {
		_isDragging = false,
		_selectionBeforeDrag = {},
		_dragStartLocation = nil,
		_dragCandidates = {},
	}

	return setmetatable(self, DragSelector)
end

-- Create a frustum described by the selection start and end locations and current camera.
local function getSelectionFrustum(startLocation, endLocation)
	local rect = Rect.new(startLocation, endLocation)

	local topLeft = Workspace.CurrentCamera:ViewportPointToRay(rect.Min.X, rect.Min.Y)
	local topRight = Workspace.CurrentCamera:ViewportPointToRay(rect.Max.X, rect.Min.Y)
	local bottomRight = Workspace.CurrentCamera:ViewportPointToRay(rect.Max.X, rect.Max.Y)
	local bottomLeft = Workspace.CurrentCamera:ViewportPointToRay(rect.Min.X, rect.Max.Y)

	local left = bottomLeft.Direction:Cross(topLeft.Direction)
	local top = topLeft.Direction:Cross(topRight.Direction)
	local right = topRight.Direction:Cross(bottomRight.Direction)
	local bottom = bottomRight.Direction:Cross(bottomLeft.Direction)

	return {
		{origin = topLeft.Origin, normal = top},
		{origin = topRight.Origin, normal = right},
		{origin = bottomRight.Origin, normal = bottom},
		{origin = bottomLeft.Origin, normal = left}
	}
end

function DragSelector:getStartLocation()
	return self._dragStartLocation
end

-- Get list of drag candidates from all selectable parts in the workspace.
function DragSelector:beginDrag(location)
    assert(not self._isDragging, "Cannot begin drag when already dragging.")
    self._isDragging = true

	self._dragCandidates = {}
	self._selectionBeforeDrag = SelectionWrapper:Get()
    self._dragStartLocation = location

	local alreadyAddedSet = {}
	for _, object in ipairs(Workspace:GetDescendants()) do
		local isModel = object:IsA("Model")
		if isModel or object:IsA("BasePart") then
			local selectable = SelectionHelper.getSelectable(object)
			if selectable and not alreadyAddedSet[selectable] then
				local center
				if selectable:IsA("Tool") then
					if isModel then
						center = object:GetBoundingBox().Position
					else
						center = object.Position
					end
				elseif selectable:IsA("Model") then
					center = selectable:GetBoundingBox().Position
				else
					center = selectable.Position
				end
				alreadyAddedSet[selectable] = true
				table.insert(self._dragCandidates, {
					center = center,
					object = selectable,
				})
			end
		elseif object:IsA("Attachment") then
			if object.Visible or areConstraintDetailsShown() then
				table.insert(self._dragCandidates, {
					center = object.WorldPosition,
					object = object,
				})
			end
		end
	end
end

--[[
	Test selectable parts against the frustum defined by the drag start location
	and passed in location. Parts within the frustum are added or removed from
	the selection, based on the held modified keys.
]]
function DragSelector:updateDrag(location)
    assert(self._isDragging, "Cannot update drag when no drag in progress.")

	local screenMovement = location - self._dragStartLocation
	if screenMovement.Magnitude < DRAG_SELECTION_THRESHOLD then
		return
	end

	local planes = getSelectionFrustum(self._dragStartLocation, location)
	if not planes then
		return
	end

	local newSelection = {}
	for _, candidate in ipairs(self._dragCandidates) do
		local inside = true
		for _, plane in ipairs(planes) do
			local dot = (candidate.center - plane.origin):Dot(plane.normal)
			if dot < 0 then
				inside = false
				break
			end
		end
		if inside then
			table.insert(newSelection, candidate.object)
		end
	end

	-- TODO: Studio doesn't allow rubber band selecting Models with locked parts.
	-- We probably want to copy this behavior.
	newSelection = SelectionHelper.updateSelectionWithMultipleParts(newSelection, self._selectionBeforeDrag)
	SelectionWrapper:Set(newSelection)
end

function DragSelector:commitDrag(location)
	self:updateDrag(location)

    self._selectionBeforeDrag = {}
    self._dragStartLocation = nil
    self._isDragging = false
end

function DragSelector:cancelDrag()
    if self._isDragging then
        SelectionWrapper:Set(self._selectionBeforeDrag)
	end

    self._selectionBeforeDrag = {}
    self._dragStartLocation = nil
    self._isDragging = false
end

return DragSelector
