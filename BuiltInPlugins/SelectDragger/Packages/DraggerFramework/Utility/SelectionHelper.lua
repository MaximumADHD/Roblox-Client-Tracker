--[[
	Provides utility functions related to the selection.
]]

-- Services
local Workspace = game:GetService("Workspace")

local DraggerFramework = script.Parent.Parent
local shouldDragAsFace = require(DraggerFramework.Utility.shouldDragAsFace)

local getEngineFeatureActiveInstanceHighlight = require(DraggerFramework.Flags.getEngineFeatureActiveInstanceHighlight)
local getFFlagDragFaceInstances = require(DraggerFramework.Flags.getFFlagDragFaceInstances)
local getFFlagFixLocalFreeformDrag = require(DraggerFramework.Flags.getFFlagFixLocalFreeformDrag)

local RAYCAST_DIRECTION_SCALE = 10000

local SelectionHelper = {}

local function computeBoundingBox(basisCFrame, allParts, allAttachments)
	local inverseBasis = basisCFrame:Inverse()
	local xmin, xmax = math.huge, -math.huge
	local ymin, ymax = math.huge, -math.huge
	local zmin, zmax = math.huge, -math.huge

	local terrain = Workspace.Terrain

	for _, part in ipairs(allParts) do
		if part ~= terrain then
			local cframe = part.CFrame
			local size = part.Size
			local sx, sy, sz = size.X, size.Y, size.Z

			-- Calculation for bounding box in the space of basisCFrame1
			local localCFrame1 = inverseBasis * cframe -- put cframe in our local basis
			local _, _, _,
				t00, t01, t02,
				t10, t11, t12,
				t20, t21, t22 = localCFrame1:components()
			local hw = 0.5 * (math.abs(sx * t00) + math.abs(sy * t01) + math.abs(sz * t02))
			local hh = 0.5 * (math.abs(sx * t10) + math.abs(sy * t11) + math.abs(sz * t12))
			local hd = 0.5 * (math.abs(sx * t20) + math.abs(sy * t21) + math.abs(sz * t22))
			local x, y, z = localCFrame1.X, localCFrame1.Y, localCFrame1.Z
			xmin = math.min(xmin, x - hw)
			xmax = math.max(xmax, x + hw)
			ymin = math.min(ymin, y - hh)
			ymax = math.max(ymax, y + hh)
			zmin = math.min(zmin, z - hd)
			zmax = math.max(zmax, z + hd)
		end
	end
	for _, attachment in ipairs(allAttachments) do
		local localPosition = basisCFrame:PointToObjectSpace(attachment.WorldPosition)
		local x, y, z = localPosition.X, localPosition.Y, localPosition.Z
		xmin = math.min(xmin, x)
		xmax = math.max(xmax, x)
		ymin = math.min(ymin, y)
		ymax = math.max(ymax, y)
		zmin = math.min(zmin, z)
		zmax = math.max(zmax, z)
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

--[[
	Micro-optimized code for computing a local space and the global space
	bounding box for a set of parts and attachments as fast as possible.
]]
local function computeTwoBoundingBoxes(basisCFrame1, allParts, allAttachments)
	local basisX, basisY, basisZ = basisCFrame1.X, basisCFrame1.Y, basisCFrame1.Z
	local inverseBasis1 = basisCFrame1:Inverse()
	local xmin1, xmax1 = math.huge, -math.huge
	local ymin1, ymax1 = math.huge, -math.huge
	local zmin1, zmax1 = math.huge, -math.huge
	local xmin2, xmax2 = math.huge, -math.huge
	local ymin2, ymax2 = math.huge, -math.huge
	local zmin2, zmax2 = math.huge, -math.huge

	local terrain = Workspace.Terrain

	for _, part in ipairs(allParts) do
		if part ~= terrain then
			local cframe = part.CFrame
			local size = part.Size
			local sx, sy, sz = size.X, size.Y, size.Z

			-- Calculation for bounding box in the space of basisCFrame1
			local localCFrame1 = inverseBasis1 * cframe -- put cframe in our local basis
			local _, _, _,
				t00, t01, t02,
				t10, t11, t12,
				t20, t21, t22 = localCFrame1:components()
			local hw1, hh1, hd1
			if getFFlagFixLocalFreeformDrag() then
				hw1 = 0.5 * (math.abs(sx * t00) + math.abs(sy * t01) + math.abs(sz * t02))
				hh1 = 0.5 * (math.abs(sx * t10) + math.abs(sy * t11) + math.abs(sz * t12))
				hd1 = 0.5 * (math.abs(sx * t20) + math.abs(sy * t21) + math.abs(sz * t22))
			else
				hw1 = 0.5 * (math.abs(sx * t00) + math.abs(sy * t10) + math.abs(sz * t20))
				hh1 = 0.5 * (math.abs(sx * t01) + math.abs(sy * t11) + math.abs(sz * t21))
				hd1 = 0.5 * (math.abs(sx * t02) + math.abs(sy * t12) + math.abs(sz * t22))
			end
			local x1, y1, z1 = localCFrame1.X, localCFrame1.Y, localCFrame1.Z
			xmin1 = math.min(xmin1, x1 - hw1)
			xmax1 = math.max(xmax1, x1 + hw1)
			ymin1 = math.min(ymin1, y1 - hh1)
			ymax1 = math.max(ymax1, y1 + hh1)
			zmin1 = math.min(zmin1, z1 - hd1)
			zmax1 = math.max(zmax1, z1 + hd1)

			-- Calculation for the bounding box in the global coordinate space
			_, _, _,
				t00, t01, t02,
				t10, t11, t12,
				t20, t21, t22 = cframe:components()
			local hw2 = 0.5 * (math.abs(sx * t00) + math.abs(sy * t01) + math.abs(sz * t02))
			local hh2 = 0.5 * (math.abs(sx * t10) + math.abs(sy * t11) + math.abs(sz * t12))
			local hd2 = 0.5 * (math.abs(sx * t20) + math.abs(sy * t21) + math.abs(sz * t22))
			local x2, y2, z2 = cframe.X, cframe.Y, cframe.Z
			xmin2 = math.min(xmin2, x2 - hw2)
			xmax2 = math.max(xmax2, x2 + hw2)
			ymin2 = math.min(ymin2, y2 - hh2)
			ymax2 = math.max(ymax2, y2 + hh2)
			zmin2 = math.min(zmin2, z2 - hd2)
			zmax2 = math.max(zmax2, z2 + hd2)
		end
	end
	for _, attachment in ipairs(allAttachments) do
		local worldPosition = attachment.WorldPosition

		local localPosition = inverseBasis1 * worldPosition
		local localX, localY, localZ = localPosition.X, localPosition.Y, localPosition.Z
		xmin1 = math.min(xmin1, localX)
		xmax1 = math.max(xmax1, localX)
		ymin1 = math.min(ymin1, localY)
		ymax1 = math.max(ymax1, localY)
		zmin1 = math.min(zmin1, localZ)
		zmax1 = math.max(zmax1, localZ)

		local globalX, globalY, globalZ = worldPosition.X, worldPosition.Y, worldPosition.Z
		xmin2 = math.min(xmin2, globalX)
		xmax2 = math.max(xmax2, globalX)
		ymin2 = math.min(ymin2, globalY)
		ymax2 = math.max(ymax2, globalY)
		zmin2 = math.min(zmin2, globalZ)
		zmax2 = math.max(zmax2, globalZ)
	end

	local localBoundingBoxOffset = Vector3.new(
		0.5 * (xmin1 + xmax1),
		0.5 * (ymin1 + ymax1),
		0.5 * (zmin1 + zmax1)
	)
	local localBoundingBoxSize = Vector3.new(
		xmax1 - xmin1,
		ymax1 - ymin1,
		zmax1 - zmin1
	)

	local globalBoundingBoxOffset = Vector3.new(
		0.5 * (xmin2 + xmax2) - basisX,
		0.5 * (ymin2 + ymax2) - basisY,
		0.5 * (zmin2 + zmax2) - basisZ
	)
	local globalBoundingBoxSize = Vector3.new(
		xmax2 - xmin2,
		ymax2 - ymin2,
		zmax2 - zmin2
	)

	return localBoundingBoxOffset, localBoundingBoxSize,
		globalBoundingBoxOffset, globalBoundingBoxSize
end

function SelectionHelper.computeSelectionInfo(selectedObjects, isSimulating, useLocalSpace)
	-- Gather all of the actual parts and mark the first one as the primary part.
	local allParts = table.create(64)
	local allPartSet = {}
	local allAttachments = {}
	local allInstancesWithConfigurableFace = {}
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
			if not allPartSet[instance] and instance ~= terrain then
				table.insert(allParts, instance)
				allPartSet[instance] = true
				primaryPart = primaryPart or instance
				basisCFrame = basisCFrame or instance.CFrame
			end
		elseif getFFlagDragFaceInstances() and shouldDragAsFace(instance) then
			table.insert(allInstancesWithConfigurableFace, instance)
		elseif instance:IsA("Attachment") then
			table.insert(allAttachments, instance)
		end
		-- It is possible to place parts inside of other parts, so this isn't an else on the prior if.
		for _, descendant in ipairs(instance:GetDescendants()) do
			if descendant:IsA("BasePart") and not allPartSet[descendant] and descendant ~= terrain then
				table.insert(allParts, descendant)
				allPartSet[descendant] = true
				primaryPart = primaryPart or descendant
				basisCFrame = basisCFrame or descendant.CFrame
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
	local localBoundingBoxOffset, localBoundingBoxSize

	-- Chosen = local or global depending on the UseLocalSpace setting
	local chosenBasisCFrame
	local chosenBoundingBoxOffset, chosenBoundingBoxSize

	if useLocalSpace then
		localBoundingBoxOffset, localBoundingBoxSize =
			computeBoundingBox(localBasisCFrame, allParts, allAttachments)

		chosenBasisCFrame = localBasisCFrame
		chosenBoundingBoxOffset, chosenBoundingBoxSize =
			localBoundingBoxOffset, localBoundingBoxSize
	else
		localBoundingBoxOffset, localBoundingBoxSize,
			chosenBoundingBoxOffset, chosenBoundingBoxSize =
			computeTwoBoundingBoxes(localBasisCFrame, allParts, allAttachments)

		chosenBasisCFrame = CFrame.new(basisCFrame.Position)
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
	if isSimulating then
		for _, part in ipairs(allParts) do
			if not part:IsGrounded() then
				selectionHasPhysics = true
				break
			end
		end
		if not selectionHasPhysics then
			for _, attachment in ipairs(allAttachments) do
				local parentPart = attachment.Parent
				if parentPart and not parentPart:IsGrounded() then
					selectionHasPhysics = true
					break
				end
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
		partSet = allPartSet,
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

		-- Instances with configurable faces
		instancesWithConfigurableFace = allInstancesWithConfigurableFace,
	}
end

--[[
	Get the selectable object from the passed-in part or model.

	If the instance is an Attachment or Constraint, it is returned directly.

	If the instance belongs to a model the top-level model is returned, unless
	the alt key is held, in which case the part itself is returned. Locked parts
	are not considered selectable.

	getMostNested specifies whether to drill down to the most nested selectable
	object instead of taking the least nested object like normal.
]]
function SelectionHelper.getSelectable(instance, getMostNested)
	return SelectionHelper.getSelectableWithCache(instance, {}, getMostNested)
end

--[[
	getSelectable, but accepting a cache parameter to optimize the box selection
	tight loop case, and a cached value of isAltKeyDown to avoid repeated calls
	to that function.
]]
function SelectionHelper.getSelectableWithCache(instance, cache, isAltKeyDown)
	-- First, the easy nil and attachment cases.
	if not instance then
		return nil
	elseif instance:IsA("Attachment") or instance:IsA("Constraint") or
		instance:IsA("WeldConstraint") or instance:IsA("NoCollisionConstraint") then
		-- Note, this attachment case has to come before the fast-flat-model
		-- optimization, otherwise selecting an attachment might result in the
		-- parent part of the attachment being selected instead for cases with
		-- parts nested under other parts.
		return instance
	end

	-- Fast-flat-model optimization. Most places have a large number of parts
	-- directly underneath models with no further nesting of models. We have a
	-- nice optimization in this case, where we can cache what selectable
	-- a given parent will result in. That way we can handle many of the
	-- selectable determinations with a single hashtable lookup.
	local instanceParent = instance.Parent
	local fastCached = cache[instanceParent]
	if fastCached then
		-- Note: We don't need to worry about the locked case here. In order to
		-- return a Model as a selectable thanks to a locked part here, we would
		-- already have had to have already found an unlocked part in the same
		-- model, in which case it does not hurt to return it.
		return fastCached
	end

	-- Make sure that instance is a model or non-locked instance
	if instance:IsA("BasePart") then
		if instance.Locked then
			return nil
		end
	elseif not (instance:IsA("Model") or instance:IsA("Tool")) then
		return nil
	end

	if isAltKeyDown then
		return instance
	else
		local selectableInstance = instance
		local candidate = instanceParent
		while candidate do
			if (candidate:IsA("Model") or candidate:IsA("Tool")) and candidate ~= Workspace then
				selectableInstance = candidate
			end
			candidate = candidate.Parent
		end

		-- Add to cache. Note: We could add all of the entries in the hierarchy
		-- between instance and selectableInstance to the cache, but that
		-- actually has worse perf, since it costs time to modify cache, while
		-- most models are flat and thus don't benefit from it.
		if selectableInstance ~= instance then
			cache[instanceParent] = selectableInstance
		end

		return selectableInstance
	end
end

-- Returns: Did the selection change, The new selection
function SelectionHelper.updateSelection(instance, oldSelection,
	shouldExtendSelection, getMostNested, shouldUpdateActiveInstance)
	local doExtendSelection = shouldExtendSelection
	local selectableInstance = SelectionHelper.getSelectable(instance, getMostNested)
	local doUpdateActiveInstance = shouldUpdateActiveInstance

	if not selectableInstance then
		if doExtendSelection then
			return false, oldSelection
		else
			local wasOldSelectionNonempty = (#oldSelection > 0)
			return wasOldSelectionNonempty, {}
		end
	end

	if doExtendSelection then
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
		if getEngineFeatureActiveInstanceHighlight() then
			local index = table.find(oldSelection, selectableInstance)
			if index then
				-- The instance is already in the selection. If the active instance
				-- needs to be updated, and the instance isn't already the last item
				-- in the list, move it to the end of the selection.
				if doUpdateActiveInstance then
					local lastIndex = #oldSelection
					if index < lastIndex then
						local newSelection = {}
						table.move(oldSelection, 1, index, 1, newSelection)
						table.move(oldSelection, index + 1, lastIndex, index, newSelection)
						newSelection[lastIndex] = selectableInstance

						return true, newSelection
					end
				end
				-- Otherwise, leave the selection alone.
				return false, oldSelection
			else
				-- The instance is not in the selection and the selection is not being
				-- extended; overwrite the old selection.
				return true, {selectableInstance}
			end
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
end

-- TODO: combine with SelectionHelper.updateSelection, or at least break out
-- the common bits into a local function.
function SelectionHelper.updateSelectionWithMultipleParts(instances, oldSelection,
	shouldXorSelection, getMostNested)

	local selectableInstances = {}

	-- Note here: instances IS a list of unique instances, but multiple
	-- instances in that list may induce selection of the same selectable.
	-- (E.g., any time you box-select a model and your box select includes
	-- multiple parts in the model)
	-- The result is, we need to filter out the duplicate selectables.
	local alreadyFlaggedForAddSet = {}
	for _, instance in ipairs(instances) do
		local selectablePart = SelectionHelper.getSelectable(instance, getMostNested)
		if selectablePart ~= nil and not alreadyFlaggedForAddSet[selectablePart] then
			table.insert(selectableInstances, selectablePart)
			alreadyFlaggedForAddSet[selectablePart] = true
		end
	end

	if #selectableInstances == 0 then
		return shouldXorSelection and oldSelection or {}
	end

	local newSelection
	if shouldXorSelection then
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

return SelectionHelper
