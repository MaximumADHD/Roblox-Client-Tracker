local StudioService = game:GetService("StudioService")
local Workspace = game:GetService("Workspace")
local UserInputService = game:GetService("UserInputService")

local DraggerFramework = script.Parent.Parent

local SelectionHelper = require(DraggerFramework.Utility.SelectionHelper)
local SelectionWrapper = require(DraggerFramework.Utility.SelectionWrapper)

local getFFlagDraggerRefactor = require(DraggerFramework.Flags.getFFlagDraggerRefactor)

-- Ensure we aren't still referencing globals
if getFFlagDraggerRefactor() then
	SelectionWrapper = nil
	StudioService = nil
	UserInputService = nil
end

-- Minimum distance (pixels) required for a drag to select parts.
local DRAG_SELECTION_THRESHOLD = 3

local function areConstraintDetailsShown()
	return StudioService.ShowConstraintDetails
end

local function isAltKeyDown()
	return UserInputService:IsKeyDown(Enum.KeyCode.LeftAlt) or UserInputService:IsKeyDown(Enum.KeyCode.RightAlt)
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

if getFFlagDraggerRefactor() then
	-- Create a frustum described by the selection start and end locations and current camera.
	local function getSelectionFrustum(draggerContext, startLocation, endLocation)
		local rect = Rect.new(startLocation, endLocation)

		local topLeft = draggerContext:viewportPointToRay(Vector2.new(rect.Min.X, rect.Min.Y))
		local topRight = draggerContext:viewportPointToRay(Vector2.new(rect.Max.X, rect.Min.Y))
		local bottomRight = draggerContext:viewportPointToRay(Vector2.new(rect.Max.X, rect.Max.Y))
		local bottomLeft = draggerContext:viewportPointToRay(Vector2.new(rect.Min.X, rect.Max.Y))

		if topRight.Direction:FuzzyEq(topLeft.Direction) then
			-- Ortho view
			local top = (topRight.Origin - topLeft.Origin):Cross(topRight.Direction)
			local right = (bottomRight.Origin - topRight.Origin):Cross(bottomRight.Direction)
			local bottom = (bottomLeft.Origin - bottomRight.Origin):Cross(bottomLeft.Direction)
			local left = (topLeft.Origin - bottomLeft.Origin):Cross(topLeft.Direction)

			return {
				{origin = topLeft.Origin, normal = top},
				{origin = topRight.Origin, normal = right},
				{origin = bottomRight.Origin, normal = bottom},
				{origin = bottomLeft.Origin, normal = left}
			}
		else
			-- Perspective view
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
	end

	function DragSelector:getStartLocation()
		return self._dragStartLocation
	end

	-- Get list of drag candidates from all selectable parts in the workspace.
	-- startLocation can override the location the drag is treated as having
	-- started at.
	function DragSelector:beginDrag(draggerContext, startLocation)
		assert(not self._isDragging, "Cannot begin drag when already dragging.")
		self._isDragging = true

		local shouldSelectIndividually = draggerContext:isAltKeyDown()

		self._dragCandidates = {}
		self._selectionBeforeDrag = draggerContext:getSelectionWrapper():Get()
		self._dragStartLocation = startLocation or draggerContext:getMouseLocation()

		local getSelectableCache = {}
		local alreadyAddedSet = {}
		local descendants = Workspace:GetDescendants()
		for _, object in ipairs(descendants) do
			if object:IsA("BasePart") then
				if not object.Locked then
					local selectable = SelectionHelper.getSelectableWithCache(object,
						getSelectableCache, shouldSelectIndividually)
					if selectable and not alreadyAddedSet[selectable] then
						local center
						if selectable:IsA("Tool") then
							center = object.Position
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
				end
			elseif object:IsA("Attachment") then
				if object.Visible or draggerContext:areConstraintDetailsShown() then
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
	function DragSelector:updateDrag(draggerContext)
		assert(self._isDragging, "Cannot update drag when no drag in progress.")

		local shouldXorSelection = draggerContext:shouldExtendSelection()
		local shouldDrillSelection = draggerContext:isAltKeyDown()
		local location = draggerContext:getMouseLocation()

		local screenMovement = location - self._dragStartLocation
		if screenMovement.Magnitude < DRAG_SELECTION_THRESHOLD then
			return
		end

		local planes = getSelectionFrustum(draggerContext,
			self._dragStartLocation, location)
		if not planes then
			return
		end

		local newSelection = {}
		local didChangeSelection = false
		for _, candidate in ipairs(self._dragCandidates) do
			local inside = true
			for _, plane in ipairs(planes) do
				local dot = (candidate.center - plane.origin):Dot(plane.normal)
				if dot < 0 then
					inside = false
					break
				end
			end
			if inside ~= candidate.selected then
				candidate.selected = inside
				didChangeSelection = true
			end
			if inside then
				table.insert(newSelection, candidate.object)
			end
		end

		if didChangeSelection then
			newSelection = SelectionHelper.updateSelectionWithMultipleParts(
				newSelection, self._selectionBeforeDrag,
				shouldXorSelection,
				shouldDrillSelection)
			draggerContext:getSelectionWrapper():Set(newSelection)
		end
	end

	function DragSelector:commitDrag(draggerContext)
		self:updateDrag(draggerContext)

		self._selectionBeforeDrag = {}
		self._dragStartLocation = nil
		self._isDragging = false
	end

	function DragSelector:cancelDrag(draggerContext)
		if self._isDragging then
			draggerContext:getSelectionWrapper():Set(self._selectionBeforeDrag)
		end

		self._selectionBeforeDrag = {}
		self._dragStartLocation = nil
		self._isDragging = false
	end
else
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

		local isAltKeyDownState = isAltKeyDown()
		local getSelectableCache = {}
		local alreadyAddedSet = {}
		local descendants = Workspace:GetDescendants()
		for _, object in ipairs(descendants) do
			if object:IsA("BasePart") then
				if not object.Locked then
					local selectable = SelectionHelper.getSelectableWithCache(object,
						getSelectableCache, isAltKeyDownState)
					if selectable and not alreadyAddedSet[selectable] then
						local center
						if selectable:IsA("Tool") then
							center = object.Position
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
		local didChangeSelection = false
		for _, candidate in ipairs(self._dragCandidates) do
			local inside = true
			for _, plane in ipairs(planes) do
				local dot = (candidate.center - plane.origin):Dot(plane.normal)
				if dot < 0 then
					inside = false
					break
				end
			end
			if inside ~= candidate.selected then
				candidate.selected = inside
				didChangeSelection = true
			end
			if inside then
				table.insert(newSelection, candidate.object)
			end
		end

		if didChangeSelection then
			newSelection = SelectionHelper.updateSelectionWithMultipleParts(newSelection, self._selectionBeforeDrag)
			SelectionWrapper:Set(newSelection)
		end
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
end

return DragSelector
