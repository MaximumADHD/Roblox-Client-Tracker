--[[
	Provides utility functions related to the selection.
]]

-- Services
local Workspace = game:GetService("Workspace")

local DraggerFramework = script.Parent.Parent
local shouldDragAsFace = require(DraggerFramework.Utility.shouldDragAsFace)

local getEngineFeatureActiveInstanceHighlight = require(DraggerFramework.Flags.getEngineFeatureActiveInstanceHighlight)
local getFFlagDragFaceInstances = require(DraggerFramework.Flags.getFFlagDragFaceInstances)

local getEngineFeatureEditPivot = require(DraggerFramework.Flags.getEngineFeatureEditPivot)
local getEngineFeatureSelectionServiceAddRemove = require(DraggerFramework.Flags.getEngineFeatureSelectionServiceAddRemove)

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
			local hw1 = 0.5 * (math.abs(sx * t00) + math.abs(sy * t01) + math.abs(sz * t02))
			local hh1 = 0.5 * (math.abs(sx * t10) + math.abs(sy * t11) + math.abs(sz * t12))
			local hd1 = 0.5 * (math.abs(sx * t20) + math.abs(sy * t21) + math.abs(sz * t22))
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
		elseif instance:IsA("BasePart") then
			if not allPartSet[instance] and instance ~= terrain then
				table.insert(allParts, instance)
				allPartSet[instance] = true
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
				local parentPart = attachment:FindFirstAncestorWhichIsA("BasePart")
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

		-- Are any of the parts in the selection physically free moving
		hasPhysics = selectionHasPhysics,

		-- Instances with configurable faces
		instancesWithConfigurableFace = allInstancesWithConfigurableFace,
	}
end


-- Returns: Did the selection change, The new selection, A change hint
function SelectionHelper.updateSelection(selectable, oldSelection, isExclusive, shouldExtendSelection)
	local doExtendSelection = shouldExtendSelection

	if not selectable then
		if doExtendSelection then
			return false, oldSelection
		else
			local wasOldSelectionNonempty = (#oldSelection > 0)
			return wasOldSelectionNonempty, {}
		end
	end

	if doExtendSelection and not (getEngineFeatureEditPivot() and isExclusive) then
		-- Add or remove from the selection when ctrl or shift is held.
		if getEngineFeatureSelectionServiceAddRemove() then
			local newSelection = {}
			local added, removed = {}, {}
			local didRemoveSelectableInstance = false
			for _, item in ipairs(oldSelection) do
				if item == selectable then
					didRemoveSelectableInstance = true
				else
					table.insert(newSelection, item)
				end
			end
			if didRemoveSelectableInstance then
				table.insert(removed, selectable)
			else
				table.insert(newSelection, selectable)
				table.insert(added, selectable)
			end
			return true, newSelection, {Added = added, Removed = removed}
		else
			local newSelection = {}
			local didRemoveSelectableInstance = false
			for _, item in ipairs(oldSelection) do
				if item == selectable then
					didRemoveSelectableInstance = true
				else
					table.insert(newSelection, item)
				end
			end
			if not didRemoveSelectableInstance then
				table.insert(newSelection, selectable)
			end
			return true, newSelection
		end
	else
		if getEngineFeatureActiveInstanceHighlight() then
			local index = table.find(oldSelection, selectable)
			if index and not isExclusive then
				-- The instance is already in the selection. If the active instance
				-- needs to be updated, and the instance isn't already the last item
				-- in the list, move it to the end of the selection.
				local lastIndex = #oldSelection
				if index < lastIndex then
					local newSelection = {}
					table.move(oldSelection, 1, index, 1, newSelection)
					table.move(oldSelection, index + 1, lastIndex, index, newSelection)
					newSelection[lastIndex] = selectable

					if getEngineFeatureSelectionServiceAddRemove() then
						-- Remove and then add the selectable to push it to
						-- the end of the selection.
						local hint = {Added = {selectable}, Removed = {selectable}}
						return true, newSelection, hint
					else
						return true, newSelection
					end
				end

				-- Otherwise, leave the selection alone.
				return false, oldSelection
			else
				-- The instance is not in the selection and the selection is not being
				-- extended; overwrite the old selection.
				return true, {selectable}
			end
		else
			local isAlreadyInSelection = false
			for _, item in ipairs(oldSelection) do
				if item == selectable then
					isAlreadyInSelection = true
					break
				end
			end

			if isAlreadyInSelection and not isExclusive then
				-- The instance is already in the selection; leave the selection alone.
				return false, oldSelection
			else
				-- The instance is not in the selection and the selection is not being
				-- extended; overwrite the old selection.
				return true, {selectable}
			end
		end
	end
end

function SelectionHelper.updateSelectionWithMultipleSelectables(
	selectables, oldSelection, shouldXorSelection, shouldExtendSelection)

	if #selectables == 0 then
		return (shouldXorSelection or shouldExtendSelection) and oldSelection or {}
	end

	local newSelection
	if shouldXorSelection or shouldExtendSelection then
		newSelection = {}
		-- Add or remove from the selection when ctrl or shift is held.
		local alreadySelectedInstances = {}
		for _, instance in ipairs(oldSelection) do
			alreadySelectedInstances[instance] = true
		end

		if shouldXorSelection then
			local newInstancesToSelect = {}
			for _, instance in ipairs(selectables) do
				newInstancesToSelect[instance] = true
			end
			for _, selectable in ipairs(oldSelection) do
				if not newInstancesToSelect[selectable] then
					table.insert(newSelection, selectable)
				end
			end
			for _, selectable in ipairs(selectables) do
				if not alreadySelectedInstances[selectable] then
					table.insert(newSelection, selectable)
				end
			end
		elseif shouldExtendSelection then
			for _, selectable in ipairs(oldSelection) do
				table.insert(newSelection, selectable)
			end
			for _, selectable in ipairs(selectables) do
				if not alreadySelectedInstances[selectable] then
					table.insert(newSelection, selectable)
				end
			end
		end
	else
		-- The selection is not being extended; overwrite the old selection.
		newSelection = selectables
	end
	return newSelection
end

return SelectionHelper
