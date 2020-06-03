--[[
	Provides utility functions related to the selection.
]]

-- Services
local UserInputService = game:GetService("UserInputService")
local Workspace = game:GetService("Workspace")
local StudioService = game:GetService("StudioService")
local RunService = game:GetService("RunService")

local Framework = script.Parent.Parent
local getFFlagHandleOddNesting = require(Framework.Flags.getFFlagHandleOddNesting)

local RAYCAST_DIRECTION_SCALE = 10000

local SelectionHelper = {}

local function isAltKeyDown()
	return UserInputService:IsKeyDown(Enum.KeyCode.LeftAlt) or UserInputService:IsKeyDown(Enum.KeyCode.RightAlt)
end

local function isCtrlKeyDown()
	return UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) or UserInputService:IsKeyDown(Enum.KeyCode.RightControl)
end

local function isShiftKeyDown()
	return UserInputService:IsKeyDown(Enum.KeyCode.LeftShift) or UserInputService:IsKeyDown(Enum.KeyCode.RightShift)
end

function SelectionHelper.shouldExtendSelection()
	return isCtrlKeyDown() or isShiftKeyDown()
end

local function computeBoundingBox(basisCFrame, allParts, allAttachments)
	local inverseBasis = basisCFrame:Inverse()
	local xmin, xmax = math.huge, -math.huge
	local ymin, ymax = math.huge, -math.huge
	local zmin, zmax = math.huge, -math.huge

	local function updateBoundingBox(cframe, size)
		local localCFrame = inverseBasis * cframe -- put cframe in our local basis
		local at = localCFrame.p
		local inv = localCFrame:Inverse()
		local x = size * inv.RightVector
		local y = size * inv.UpVector
		local z = size * inv.LookVector
		local w = math.abs(x.x) + math.abs(x.y) + math.abs(x.z)
		local h = math.abs(y.x) + math.abs(y.y) + math.abs(y.z)
		local d = math.abs(z.x) + math.abs(z.y) + math.abs(z.z)
		xmin = math.min(xmin, at.x - 0.5 * w)
		xmax = math.max(xmax, at.x + 0.5 * w)
		ymin = math.min(ymin, at.y - 0.5 * h)
		ymax = math.max(ymax, at.y + 0.5 * h)
		zmin = math.min(zmin, at.z - 0.5 * d)
		zmax = math.max(zmax, at.z + 0.5 * d)
	end

	for _, part in ipairs(allParts) do
		if not part:IsA("Terrain") then
			updateBoundingBox(part.CFrame, part.Size)
		end
	end
	for _, attachment in ipairs(allAttachments) do
		updateBoundingBox(CFrame.new(attachment.WorldPosition), Vector3.new(0, 0, 0))
	end

	local boundingBoxOffset = Vector3.new(
		0.5 * (xmin + xmax),
		0.5 * (ymin + ymax),
		0.5 * (zmin + zmax)
	)
	local boundingBoxSize = Vector3.new(
		xmax - xmin,
		ymax - ymin,
		zmax - zmin
	)

	return boundingBoxOffset, boundingBoxSize
end

function SelectionHelper.computeSelectionInfo(selectedObjects)
	-- Gather all of the actual parts and mark the first one as the primary part.
	local allParts = {}
	local allPartSet = {}
	local allAttachments = {}
	local primaryPart = nil
	local basisCFrame = nil
	local terrain = Workspace.Terrain

	for _, instance in ipairs(selectedObjects) do
		if instance:IsA("Model") then
			if not basisCFrame then
				local boundingBoxCFrame, boundingBoxSize =
					instance:GetBoundingBox()
				if boundingBoxSize ~= Vector3.new() then
					basisCFrame = boundingBoxCFrame
				end
			end
			primaryPart = primaryPart or instance.PrimaryPart
		elseif instance:IsA("BasePart") then
			if getFFlagHandleOddNesting() then
				if not allPartSet[instance] and instance ~= terrain then
					table.insert(allParts, instance)
					allPartSet[instance] = true
					primaryPart = primaryPart or instance
					basisCFrame = basisCFrame or instance.CFrame
				end
			else
				if instance ~= terrain then
					table.insert(allParts, instance)
					allPartSet[instance] = true
					primaryPart = primaryPart or instance
					basisCFrame = basisCFrame or instance.CFrame
				end
			end
		elseif instance:IsA("Attachment") then
			table.insert(allAttachments, instance)
		end
		-- It is possible to place parts inside of other parts, so this isn't an else on the prior if.
		for _, descendant in ipairs(instance:GetDescendants()) do
			if getFFlagHandleOddNesting() then
				if descendant:IsA("BasePart") and not allPartSet[descendant] and descendant ~= terrain then
					table.insert(allParts, descendant)
					allPartSet[descendant] = true
					primaryPart = primaryPart or descendant
					basisCFrame = basisCFrame or descendant.CFrame
				end
			else
				if descendant:IsA("BasePart") and descendant ~= terrain then
					table.insert(allParts, descendant)
					allPartSet[descendant] = true
					primaryPart = primaryPart or descendant
					basisCFrame = basisCFrame or descendant.CFrame
				end
			end
		end
	end

	-- Use attachment CFrame as a backup if there weren't any parts in the
	-- selection to set the basisCFrame with. Attachment CFrames should ONLY
	-- be used as a basis if there aren't any parts to go off of.
	if not basisCFrame then
		if #allAttachments > 0 then
			basisCFrame = allAttachments[1].WorldCFrame
		else
			basisCFrame = CFrame.new()
		end
	end

	-- Build the basisCFrame aligned bounding box.
	-- Local = always the local space. Needed because freeform dragging always
	-- uses the local space bounding box.
	local localBasisCFrame = basisCFrame
	local localBoundingBoxOffset, localBoundingBoxSize =
		computeBoundingBox(localBasisCFrame, allParts, allAttachments)

	-- Chosen = local or global depending on the UseLocalSpace setting
	local chosenBasisCFrame
	local chosenBoundingBoxOffset, chosenBoundingBoxSize

	if StudioService.UseLocalSpace then
		chosenBasisCFrame = localBasisCFrame
		chosenBoundingBoxOffset, chosenBoundingBoxSize =
			localBoundingBoxOffset, localBoundingBoxSize
	else
		chosenBasisCFrame = CFrame.new(basisCFrame.Position)
		chosenBoundingBoxOffset, chosenBoundingBoxSize =
			computeBoundingBox(chosenBasisCFrame, allParts, allAttachments)
	end

	-- Build a table of only the "interesting" attachments, that is, those
	-- which aren't underneath one of the selected parts.
	local interestingAttachments = {}
	for _, attachment in ipairs(allAttachments) do
		if not allPartSet[attachment.Parent] then
			table.insert(interestingAttachments, attachment)
		end
	end

	-- Store original CFrames so while moving parts we don't run into floating
	-- point error problems by using relative moves.
	local originalCFrameMap = {}
	for _, part in ipairs(allParts) do
		originalCFrameMap[part] = part.CFrame
	end

	-- Figure out if any of the objects in the selection are physically free
	-- moving parts. If there are, we will need to update the selection info
	-- every frame because those parts may have moved.
	local selectionHasPhysics = false
	if RunService:IsRunning() then
		for _, part in ipairs(allParts) do
			if not part:IsGrounded() then
				selectionHasPhysics = true
				break
			end
		end
	end

	return {
		-- basisCFrame is the CFrame which the selection will be transformed
		-- relative to when transforming it.
		basisCFrame = chosenBasisCFrame,

		-- boundingBoxSize is the size of the bounding box, as oriented around
		-- the basisCFrame.
		boundingBoxSize = chosenBoundingBoxSize,

		-- boundingBoxOffset is the offset of the center of the bounding box
		-- from the basisCFrame's position. basisCFrame will always be
		-- somewhere in the bounding box, but not necessarily at the center.
		boundingBoxOffset = chosenBoundingBoxOffset,

		-- This is a local space variant of the above set of properties. If the
		-- user is working in local space, then basisCFrame = localBasisCFrame,
		-- but they will differ if they have chosen a different frame of
		-- reference to work in.
		localBasisCFrame = localBasisCFrame,
		localBoundingBoxSize = localBoundingBoxSize,
		localBoundingBoxOffset = localBoundingBoxOffset,

		-- Parts and Attachments are the arrays of parts and attachments that
		-- need to be updated when transforming the selection.
		parts = allParts,
		attachments = interestingAttachments,

		-- All the attachments, including ones under parts in the list of parts
		-- to move. We still need these for some edge case behavior.
		allAttachments = allAttachments,

		-- OriginalCFrameMap stores the cframes of the parts before any
		-- transformation was applied to the selection.
		originalCFrameMap = originalCFrameMap,

		-- Primary part is the part that was used to deci
		primaryPart = primaryPart,

		-- Are any of the parts in the selection physically free moving
		hasPhysics = selectionHasPhysics,
	}
end

--[[
	Get the selectable object from the passed-in part or model.

	If the instance is an Attachment or Constraint, it is returned directly.

	If the instance belongs to a model the top-level model is returned, unless
	the alt key is held, in which case the part itself is returned. Locked parts
	are not considered selectable.
]]
function SelectionHelper.getSelectable(instance)
	-- Make sure that instance is a model or non-locked instance
	if not instance then
		return nil
	elseif instance:IsA("BasePart") then
		if instance.Locked then
			return nil
		end
	elseif instance:IsA("Attachment") or instance:IsA("Constraint") then
		return instance
	elseif not (instance:IsA("Model") or instance:IsA("Tool")) then
		return nil
	end

	if isAltKeyDown() then
		return instance
	elseif instance then
		local selectableInstance = instance
		while instance.Parent do
			local candidate = instance.Parent
			if (candidate:IsA("Model") or candidate:IsA("Tool")) and candidate ~= Workspace then
				selectableInstance = candidate
			end
			instance = candidate
		end
		return selectableInstance
	end
	return nil
end

-- Returns: Did the selection change, The new selection
function SelectionHelper.updateSelection(instance, oldSelection)
	local selectableInstance = SelectionHelper.getSelectable(instance)
	if not selectableInstance then
		if SelectionHelper.shouldExtendSelection() then
			return false, oldSelection
		else
			local wasOldSelectionNonempty = (#oldSelection > 0)
			return wasOldSelectionNonempty, {}
		end
	end

	if SelectionHelper.shouldExtendSelection() then
		-- Add or remove from the selection when ctrl or shift is held.
		local newSelection = {}
		local didRemoveSelectableInstance = false
		for _, item in ipairs(oldSelection) do
			if item == selectableInstance then
				didRemoveSelectableInstance = true
			else
				table.insert(newSelection, item)
			end
		end
		if not didRemoveSelectableInstance then
			table.insert(newSelection, selectableInstance)
		end
		return true, newSelection
	else
		local isAlreadyInSelection = false
		for _, item in ipairs(oldSelection) do
			if item == selectableInstance then
				isAlreadyInSelection = true
				break
			end
		end

		if isAlreadyInSelection then
			-- The instance is already in the selection; leave the selection alone.
			return false, oldSelection
		else
			-- The instance is not in the selection and the selection is not being
			-- extended; overwrite the old selection.
			return true, {selectableInstance}
		end
	end
end

-- TODO: combine with SelectionHelper.updateSelection, or at least break out
-- the common bits into a local function.
function SelectionHelper.updateSelectionWithMultipleParts(instances, oldSelection)
	local selectableInstances = {}

	if getFFlagHandleOddNesting() then
		-- Note here: instances IS a list of unique instances, but multiple
		-- instances in that list may induce selection of the same selectable.
		-- (EG: Any time you box-select a model and your box select includes
		-- multiple parts in the model)
		-- The result is, we need to filter out the duplicate selectables.
		local alreadyFlaggedForAddSet = {}
		for _, instance in ipairs(instances) do
			local selectablePart = SelectionHelper.getSelectable(instance)
			if selectablePart ~= nil and not alreadyFlaggedForAddSet[selectablePart] then
				table.insert(selectableInstances, selectablePart)
				alreadyFlaggedForAddSet[selectablePart] = true
			end
		end
	else
		for _, instance in ipairs(instances) do
			local selectablePart = SelectionHelper.getSelectable(instance)
			if selectablePart ~= nil then
				table.insert(selectableInstances, selectablePart)
			end
		end
	end

	if #selectableInstances == 0 then
		return SelectionHelper.shouldExtendSelection() and oldSelection or {}
	end

	local newSelection
	if SelectionHelper.shouldExtendSelection() then
		newSelection = {}
		-- Add or remove from the selection when ctrl or shift is held.
		local alreadySelectedInstances = {}
		for _, instance in ipairs(oldSelection) do
			alreadySelectedInstances[instance] = true
		end

		for _, instance in ipairs(selectableInstances) do
			if alreadySelectedInstances[instance] then
				alreadySelectedInstances[instance] = nil
			else
				table.insert(newSelection, instance)
			end
		end
		for instance, _ in pairs(alreadySelectedInstances) do
			table.insert(newSelection, instance)
		end
	else
		-- The selection is not being extended; overwrite the old selection.
		newSelection = selectableInstances
	end
	return newSelection
end

function SelectionHelper.getMouseRay()
	local location = UserInputService:GetMouseLocation()
	local unitRay = Workspace.CurrentCamera:ViewportPointToRay(location.X, location.Y)
	return Ray.new(unitRay.Origin, unitRay.Direction * RAYCAST_DIRECTION_SCALE)
end

function SelectionHelper.getMouseTarget(selectedObjects)
	local mouseRay = SelectionHelper.getMouseRay()
	local hitObject, hitPosition = Workspace:FindPartOnRay(mouseRay)

	-- Selection favoring: If there is a selected object and a non-selected
	-- object almost exactly coincident underneath the mouse, then we should
	-- favor the selected one, even if due to floating point error the non
	-- selected one comes out slightly closer.
	-- Without this case, if you duplicate objects and try to drag them, you
	-- may end up dragging only one of the objects because you clicked on the
	-- old non-selected copy, as opposed to the selected one you meant to.
	if hitObject then
		local hitSelectedObject, hitSelectedPosition
			= Workspace:FindPartOnRayWithWhitelist(mouseRay, selectedObjects)
		if hitSelectedObject and hitSelectedPosition:FuzzyEq(hitPosition) then
			hitObject = hitSelectedObject
			hitPosition = hitSelectedPosition
		end
	end

	local hitDistance = (mouseRay.Origin - hitPosition).Magnitude

	local hitResult = StudioService:GizmoRaycast(
		mouseRay.Origin, mouseRay.Direction, RaycastParams.new())
	if hitResult and
		(StudioService.DrawConstraintsOnTop or (hitResult.Distance < hitDistance)) then
		hitPosition = hitResult.Position
		hitDistance = hitResult.Distance
		hitObject = hitResult.Instance
	end
	return hitObject, hitDistance, hitPosition
end

return SelectionHelper
