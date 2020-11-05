
local DraggerSchemaCore = script.Parent
local Packages = DraggerSchemaCore.Parent
local DraggerFramework = Packages.DraggerFramework
local getGeometry = require(DraggerFramework.Utility.getGeometry)
local getFaceInstance = require(DraggerFramework.Utility.getFaceInstance)

--[[
	Get the "basis point" (the closest clicked vertex on the part) and put in
	the local space of the primaryCFrame of the selection.
	Also, check if there is any FaceInstance on the clicked face, and if
	there is, record it for potential FaceInstance selection on mouse up.
]]
local function buildFreeformDragInfo(draggerContext, draggerToolModel, event)
	local closestVertex
	local attachmentBeingDragged
	if event.ClickedItem:IsA("Attachment") then
		closestVertex = event.ClickedItem.WorldPosition
		attachmentBeingDragged = event.ClickedItem
	else
		local geometry = getGeometry(event.ClickedItem, event.ClickedPosition)
		local closestDistance = math.huge
		for _, vert in ipairs(geometry.vertices) do
			local distance = (vert.position - event.ClickedPosition).Magnitude
			if distance < closestDistance then
				closestDistance = distance
				closestVertex = vert.position
			end
		end
	end
	local localMainCFrame = draggerToolModel._selectionInfo:getLocalBoundingBox()
	local closestVertexInPrimarySpace = localMainCFrame:PointToObjectSpace(closestVertex)
	local clickInPrimarySpace = localMainCFrame:PointToObjectSpace(event.ClickedPosition)

	-- Find the FaceInstance to potentially select if we never actually start
	-- dragging before mouse up.
	local clickedFaceInstance
	if (event.SelectionDidContainSelectable or event.DoubleClicked) and
		event.ClickedItem:IsA("BasePart") then
		clickedFaceInstance = getFaceInstance(event.ClickedItem, event.ClickedPosition)
	end

	return {
		basisPoint = closestVertexInPrimarySpace,
		clickPoint = clickInPrimarySpace,
		clickedFaceInstance = clickedFaceInstance,
		attachmentBeingDragged = attachmentBeingDragged,
	}
end

return function(draggerContext, draggerToolModel, event)
	if not event.ClickedItem then
		return "DragSelecting"
	elseif event.ClickedItem:IsA("Constraint") or
		event.ClickedItem:IsA("WeldConstraint") or
		event.ClickedItem:IsA("NoCollisionConstraint") then
		-- Note: WeldConstraint and NoCollisionConstraint ARE NOT Constraints,
		-- but the act like they are, so we do need all the checks.

		-- Do nothing here: When clicking a constraint, do not allow the
		-- fall-through of starting a box select.
		return "Ready"
	elseif event.SelectionNowContainsSelectable then
		if draggerToolModel:doesAllowFreeformDrag() then
			return "FreeformSelectionDrag", buildFreeformDragInfo(
				draggerContext, draggerToolModel, event)
		else
			return "Ready"
		end
	else
		return "DragSelecting"
	end
end